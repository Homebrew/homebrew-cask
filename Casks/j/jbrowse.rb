cask "jbrowse" do
  version "2.12.3"
  sha256 "422d159985414b2bcdc5e1f1ff73715ee170bba4162ef56d07a58bc54674bb79"

  url "https://github.com/GMOD/jbrowse-components/releases/download/v#{version}/jbrowse-desktop-v#{version}-mac.dmg",
      verified: "github.com/GMOD/jbrowse-components/"
  name "jbrowse"
  desc "Genome browser"
  homepage "https://jbrowse.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "JBrowse #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/@jbrowse",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.jbrowse#{version.major}.app.sfl*",
    "~/Library/Preferences/org.jbrowse#{version.major}.app.plist",
  ]
end
