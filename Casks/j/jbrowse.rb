cask "jbrowse" do
  version "2.16.0"
  sha256 "07041462b5c9f708d21537d5817d4a2c912d49d0ae0775bb0ba492d5b74d723a"

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
