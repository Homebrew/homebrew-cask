cask "bbackupp" do
  version "2.12.66"
  sha256 "903ccca8d240e43289536b20e6b5d45799608692c3192fd48e37f80e45039c33"

  url "https://github.com/Lakr233/BBackupp/releases/download/#{version}/BBackupp.app.zip"
  name "BBackupp"
  desc "Automated iOS Backup Robot"
  homepage "https://github.com/Lakr233/BBackupp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "BBackupp.app"

  zap trash: [
    "~/Documents/BBackupp",
    "~/Library/HTTPStorages/wiki.qaq.BBackupp",
    "~/Library/HTTPStorages/wiki.qaq.BBackupp.binarycookies",
    "~/Library/Preferences/wiki.qaq.BBackupp.plist",
  ]
end
