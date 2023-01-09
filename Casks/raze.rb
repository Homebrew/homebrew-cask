cask "raze" do
  version "1.6.2"
  sha256 "d688e5366384ee91ab7b02554ddb00cf20d5fc715d436e8a8b1a2d4bca732ee8"

  url "https://github.com/coelckers/Raze/releases/download/#{version}/raze-macos-#{version}.zip"
  name "Raze"
  desc "Build engine port backed by GZDoom tech"
  homepage "https://github.com/coelckers/Raze"

  livecheck do
    url "https://github.com/coelckers/Raze/releases/latest"
    regex(/raze[._-]macos[._-]v?(\d+(?:\.\d+)+)\.zip/i)
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

  app "Raze.app"

  zap trash: [
    "~/Documents/Raze",
    "~/Library/Application Support/Raze",
    "~/Library/Preferences/org.drdteam.raze.plist",
    "~/Library/Preferences/org.zdoom.raze.plist",
    "~/Library/Preferences/raze.ini",
    "~/Library/Saved Application State/org.drdteam.raze.savedState",
    "~/Library/Saved Application State/org.zdoom.raze.savedState",
  ]
end
