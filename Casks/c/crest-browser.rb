cask "crest-browser" do
  version "0.8.1"
  sha256 "88e489ce6003e8274e892491766bff96e4d8d15d5fa010b24494e9eee6fa3d02"

  url "https://github.com/pauljoda/Crest/releases/download/v#{version}/Installer-Crest-#{version}-arm64.dmg"
  name "Crest"
  desc "Open-source web browser"
  homepage "https://crestbrowser.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "crest"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Crest.app"

  zap trash: [
    "~/Library/Application Scripts/com.zack40x.crest.safari",
    "~/Library/Application Scripts/SA6A94K2Y4.com.zack40x.crest",
    "~/Library/Application Support/Crest",
    "~/Library/Caches/com.pauldavis.crest",
    "~/Library/Containers/com.zack40x.crest.safari",
    "~/Library/Group Containers/SA6A94K2Y4.com.zack40x.crest",
    "~/Library/HTTPStorages/com.pauldavis.crest",
    "~/Library/Preferences/com.pauldavis.crest.plist",
    "~/Library/Preferences/com.pauldavis.crest.sync-journal.plist",
    "~/Library/WebKit/com.pauldavis.crest",
  ]
end
