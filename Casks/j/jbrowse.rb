cask "jbrowse" do
  version "2.15.0"
  sha256 "98090befc0220d42d032e4c400d25ca1145f73d86f68ea8b35395848e1af5ad5"

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
