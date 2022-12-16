cask "synfigstudio" do
  version "1.5.1,2021.10.21,2cb6c"
  sha256 "546405de0a23bbc1c537098617af6873950da1645f1e2e9c8ca8356628b785d1"

  url "https://github.com/synfig/synfig/releases/download/v#{version.csv.first}/SynfigStudio-#{version.csv.first}-#{version.csv.second}-osx-#{version.csv.third}.dmg",
      verified: "github.com/synfig/synfig/"
  name "Synfig Studio"
  desc "2D animation software"
  homepage "https://synfig.org/"

  livecheck do
    url "https://github.com/synfig/synfig/releases/latest"
    regex(%r{href=.*?/SynfigStudio-(\d+(?:\.\d+)*)-(\d+(?:\.\d+)*)-osx-([a-z\d]+)\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  app "SynfigStudio.app"

  zap trash: "~/Library/Synfig"
end
