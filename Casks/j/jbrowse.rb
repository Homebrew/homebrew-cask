cask "jbrowse" do
  version "3.4.0"
  sha256 "866ed926d093f73b8077a83664dde4f161d062dd9f14688789ade1c177ada05c"

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
