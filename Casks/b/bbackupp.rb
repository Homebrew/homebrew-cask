cask "bbackupp" do
  version "2.13.73"
  sha256 "f48b40c5d97d2f196730e51617de72b7d3526afcf5b8fd0e5fc67ba8a4807577"

  url "https://github.com/Lakr233/BBackupp/releases/download/#{version}/BBackupp.zip"
  name "BBackupp"
  desc "iOS device backup software"
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
    "~/Library/Saved Application State/wiki.qaq.BBackupp.savedState",
  ]
end
