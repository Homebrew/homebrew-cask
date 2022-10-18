cask "ganttproject" do
  version "3.2.3200,3.2.3230"
  sha256 "4e6ebd308378d3d1936050ff6407630692d5b8833f05f139428b052cf91982dc"

  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version.csv.first}/ganttproject-#{version.csv.second}.dmg",
      verified: "github.com/bardsoftware/ganttproject/"
  name "GanttProject"
  desc "Gantt chart and project management application"
  homepage "https://www.ganttproject.biz/"

  livecheck do
    url "https://github.com/bardsoftware/ganttproject/releases/latest"
    regex(%r{href=.*ganttproject[._-]v?(\d+(?:\.\d+)+)/ganttproject[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "GanttProject.app"
end
