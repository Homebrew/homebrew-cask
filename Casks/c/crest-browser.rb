cask "crest-browser" do
  version "0.7.2"
  sha256 "ac81e43de2a894ec28884fcb692a151c3946bf156c50ecebf600da9634671d54"

  url "https://github.com/pauljoda/Crest/releases/download/v#{version}/Installer-Crest-#{version}-arm64.dmg"
  name "Crest"
  desc "Open-source web browser"
  homepage "https://crestbrowser.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Crest.app"

  zap trash: [
    "~/Library/Application Support/Crest",
    "~/Library/Caches/com.pauldavis.crest",
    "~/Library/HTTPStorages/com.pauldavis.crest",
    "~/Library/Preferences/com.pauldavis.crest.plist",
    "~/Library/Preferences/com.pauldavis.crest.sync-journal.plist",
    "~/Library/WebKit/com.pauldavis.crest",
  ]
end
