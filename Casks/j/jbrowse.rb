cask "jbrowse" do
  version "2.15.3"
  sha256 "79c6f2a6d76108299e9ba2244a996bdeff3275d2260eb1276ef04de7cf80b149"

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
