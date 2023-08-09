cask "solar2d" do
  version "2023.3692"
  sha256 "f6b62cf2b8253f2b36aaf208290b66d091fcb8a1f7544f3532a5161f148930bf"

  url "https://github.com/coronalabs/corona/releases/download/#{version.minor}/Solar2D-macOS-#{version}.dmg",
      verified: "github.com/coronalabs/corona/"
  name "Solar2D"
  desc "Lua-based game engine"
  homepage "https://solar2d.com/"

  livecheck do
    url "https://github.com/coronalabs/corona/releases/latest"
    regex(%r{href=.*?/Solar2D[._-]macOS[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  suite "Corona-#{version.minor}"

  zap trash: [
    "~/Library/Application Support/Corona",
    "~/Library/Application Support/Corona Simulator",
    "~/Library/Preferences/com.coronalabs.CoronaConsole.plist",
    "~/Library/Preferences/com.coronalabs.Corona_Simulator.plist",
    "~/Library/Saved Application State/com.coronalabs.Corona_Simulator.savedState",
  ]
end
