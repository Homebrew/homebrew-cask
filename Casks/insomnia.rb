cask "insomnia" do
  version "2022.1.1"
  sha256 "d6835f3ac7e40992c3992f2a124770f2cbcbc7431661d3b721e1cbed570af033"

  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/Insomnia.Core-#{version}.dmg",
      verified: "github.com/Kong/insomnia/"
  name "Insomnia"
  desc "HTTP and GraphQL Client"
  homepage "https://insomnia.rest/"

  livecheck do
    url "https://github.com/Kong/insomnia/releases?q=prerelease%3Afalse"
    strategy :page_match
    regex(/Insomnia[._-]Core[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
