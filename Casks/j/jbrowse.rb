cask "jbrowse" do
  version "4.1.13"
  sha256 "8e2988d097b536745ece3886d75c6e7e9e06c72d1179ef772d2bc97846d7949f"

  url "https://github.com/GMOD/jbrowse-components/releases/download/v#{version}/jbrowse-desktop-v#{version}-mac.dmg",
      verified: "github.com/GMOD/jbrowse-components/"
  name "JBrowse"
  desc "Genome browser"
  homepage "https://jbrowse.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "JBrowse 2.app"

  zap trash: [
    "~/Library/Application Support/@jbrowse",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.jbrowse*.app.sfl*",
    "~/Library/Preferences/org.jbrowse*.app.plist",
  ]
end
