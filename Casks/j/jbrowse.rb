cask "jbrowse" do
  version "3.6.4"
  sha256 "6df7bdae1b03b9a2b56bb334eedb94b757048fc19167d035b1e35ee2d7646ff0"

  url "https://github.com/GMOD/jbrowse-components/releases/download/v#{version}/jbrowse-desktop-v#{version}-mac.dmg",
      verified: "github.com/GMOD/jbrowse-components/"
  name "JBrowse"
  desc "Genome browser"
  homepage "https://jbrowse.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "JBrowse 2.app"

  zap trash: [
    "~/Library/Application Support/@jbrowse",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.jbrowse*.app.sfl*",
    "~/Library/Preferences/org.jbrowse*.app.plist",
  ]
end
