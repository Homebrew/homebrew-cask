cask "insomnia" do
  version "2021.4.1"
  sha256 "7b3e849f59a6fddd09c2689d7df49358bf25847463301910a68b13914943d570"

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/Insomnia.Core-#{version}.dmg",
      verified: "github.com/Kong/insomnia/"
  name "Insomnia"
  desc "HTTP and GraphQL Client"
  homepage "https://insomnia.rest/"

  livecheck do
    url "https://insomnia.rest/changelog"
    strategy :page_match do |page|
      latest_release = page[/"release_version"\s*:\s*"(\d+(?:\.\d+)*)"/i, 1]
      update_info = Homebrew::Livecheck::Strategy.page_content("https://updates.insomnia.rest/builds/check/mac?v=#{latest_release}&app=com.insomnia.app&channel=stable")[:content]
      next latest_release if update_info.blank?

      update_info.scan(%r{/Insomnia.Core-(\d+(?:\.\d+)*)\.zip}i).flatten
    end
  end

  auto_updates true

  app "Insomnia.app"

  zap trash: [
    "~/Library/Application Support/Insomnia",
    "~/Library/Caches/com.insomnia.app",
    "~/Library/Caches/com.insomnia.app.ShipIt",
    "~/Library/Cookies/com.insomnia.app.binarycookies",
    "~/Library/Preferences/ByHost/com.insomnia.app.ShipIt.*.plist",
    "~/Library/Preferences/com.insomnia.app.helper.plist",
    "~/Library/Preferences/com.insomnia.app.plist",
    "~/Library/Saved Application State/com.insomnia.app.savedState",
  ]
end
