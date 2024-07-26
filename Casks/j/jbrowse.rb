cask "jbrowse" do
  version "2.13.0"
  sha256 "6f77d1ceb7a4d11964e4a3ca8bb2b3cd99cceb749bf8451724ac1ab532b9c34e"

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
