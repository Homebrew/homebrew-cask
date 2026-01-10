cask "jbrowse" do
  version "4.0.3"
  sha256 "b6877a1e3131bce1e637b9ef6f51b93348b20be5cf8f6aa16f341198a66473cd"

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
