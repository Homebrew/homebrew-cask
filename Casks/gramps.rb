cask "gramps" do
  version "5.1.5,1"
  sha256 "16e7416fd1aa48f4e67190123572a02f795b75e1af3b88d67b4dde9a8e1e7dfe"

  url "https://github.com/gramps-project/gramps/releases/download/v#{version.csv.first}/Gramps-Intel-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/gramps-project/gramps/"
  name "Gramps"
  desc "Genealogy software"
  homepage "https://gramps-project.org/blog/"

  livecheck do
    url "https://github.com/gramps-project/gramps/releases/latest"
    regex(/Gramps[._-]Intel[._-]v?(\d+(?:.\d+)+)[._-](\d+)\.dmg/i)
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

  app "Gramps.app"
end
