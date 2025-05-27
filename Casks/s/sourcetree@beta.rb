cask "sourcetree@beta" do
  version "4.2.12b26,277"
  sha256 "96a5beac9b6308fd184a393a0f7e44ff6c2f6efa98156d78307180f887d345e0"

  url "https://product-downloads.atlassian.com/software/sourcetree/beta/Sourcetree_#{version.csv.first}_#{version.csv.second}.zip",
      verified: "product-downloads.atlassian.com/software/sourcetree/beta/"
  name "Atlassian Sourctree"
  desc "Graphical client for Git version control"
  homepage "https://www.sourcetreeapp.com/"

  livecheck do
    url "https://product-downloads.atlassian.com/software/sourcetree/Appcast/SparkleAppcastBeta.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

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
