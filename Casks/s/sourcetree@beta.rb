cask "sourcetree@beta" do
  version "4.2.8b18,264"
  sha256 "5018989f77db0212095c86518de2d11ad460eebeba0ee5fff08f4e88ec42e555"

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
