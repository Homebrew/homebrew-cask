cask "sourcetree@beta" do
  version "4.2.20b30,320"
  sha256 "d73c6afcff6b2f7553e163a06dbacfc1a564a7d78d7658104b36f7681fdf6f47"

  url "https://product-downloads.atlassian.com/software/sourcetree/beta/Sourcetree_#{version.csv.first}_#{version.csv.second}.zip"
  name "Atlassian Sourctree"
  desc "Graphical client for Git version control"
  homepage "https://www.sourcetreeapp.com/"

  livecheck do
    url "https://product-downloads.atlassian.com/software/sourcetree/Appcast/SparkleAppcastBeta.xml"
    strategy :sparkle
  end

  depends_on :macos

  app "Sourcetree-Beta.app"
  binary "#{appdir}/Sourcetree-Beta.app/Contents/Resources/stree", target: "stree-beta"

  uninstall launchctl: "com.atlassian.SourceTreePrivilegedHelper2",
            quit:      "com.torusknot.SourceTreeNotMAS"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.torusknot.sourcetreenotmas.sfl*",
    "~/Library/Application Support/SourceTree",
    "~/Library/Caches/com.torusknot.SourceTreeNotMAS",
    "~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist",
    "~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist",
    "~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState",
  ]
end
