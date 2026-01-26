cask "sourcetree" do
  version "4.2.16,307"
  sha256 "de80f562fa5fa0f3000e11f11db08d3a1ecb086c659d87a8df3b1c29737664a8"

  url "https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_#{version.csv.first}_#{version.csv.second}.zip",
      verified: "product-downloads.atlassian.com/software/sourcetree/ga/"
  name "Atlassian SourceTree"
  desc "Graphical client for Git version control"
  homepage "https://www.sourcetreeapp.com/"

  livecheck do
    url "https://product-downloads.atlassian.com/software/sourcetree/Appcast/SparkleAppcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Sourcetree.app"
  binary "#{appdir}/Sourcetree.app/Contents/Resources/stree"

  uninstall launchctl: "com.atlassian.SourceTreePrivilegedHelper2",
            quit:      "com.torusknot.SourceTreeNotMAS"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.torusknot.sourcetreenotmas.sfl*",
    "~/Library/Application Support/SourceTree",
    "~/Library/Caches/com.torusknot.SourceTreeNotMAS",
    "~/Library/Logs/Sourcetree",
    "~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist",
    "~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist",
    "~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState",
  ]
end
