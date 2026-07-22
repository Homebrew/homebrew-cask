cask "sourcetree" do
  version "4.2.19,315"
  sha256 "5ce0bb3d7d1ea96069df7d440c37e339cd505b411f4d9a05b2ca4059800e8bb2"

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
  depends_on :macos

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
