cask "cncjs" do
  version "1.9.28,1.9.27"
  sha256 "69923d21ee094d219e872885ac9869193e65b0eaa29a68a2c71a24351cac3e85"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version.csv.first}/cncjs-app-#{version.csv.second}-macos.x64.dmg",
      verified: "github.com/cncjs/cncjs/"
  name "CNSjs"
  desc "Interface for CNC milling controllers"
  homepage "https://cnc.js.org/"

  livecheck do
    url "https://github.com/cncjs/cncjs/releases/latest"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/cncjs[._-]app[._-](\d+(?:\.\d+)+)[._-]macos\.x64\.dmg}i)
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

  app "CNCjs.app"
end
