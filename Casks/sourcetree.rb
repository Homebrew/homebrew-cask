cask "sourcetree" do
  version "4.1.9,245"
  sha256 "54a5848acd01e84949e1ba61f8ca90d661ad11b65e504c615bd2ce5999501ffc"

  url "https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_#{version.csv.first}_#{version.csv.second}.zip",
      verified: "atlassian.com/software/sourcetree/"

  on_sierra :or_older do
    version "2.7.6a"
    sha256 "d60614e9ab603e0ed158b6473c36e7944b2908d9943e332c505eba03dc1d829e"

    url "https://downloads.atlassian.com/software/sourcetree/Sourcetree_#{version}.zip",
        verified: "atlassian.com/software/sourcetree/"
  end

  on_high_sierra :or_older do
    version "3.2.1,225"
    sha256 "4bd82affa3402814c3d07ff613fbc8f45da8b0cda294d498ffbb0667bf729c9f"

    url "https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_#{version.csv.first}_#{version.csv.second}.zip",
        verified: "atlassian.com/software/sourcetree/"
  end

  name "Atlassian SourceTree"
  desc "Graphical client for Git version control"
  homepage "https://www.sourcetreeapp.com/"

  livecheck do
    url "https://product-downloads.atlassian.com/software/sourcetree/Appcast/SparkleAppcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Sourcetree.app"
  binary "#{appdir}/Sourcetree.app/Contents/Resources/stree"

  uninstall launchctl: "com.atlassian.SourceTreePrivilegedHelper2",
            quit:      "com.torusknot.SourceTreeNotMAS"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.torusknot.sourcetreenotmas.sfl2",
    "~/Library/Application Support/SourceTree",
    "~/Library/Caches/com.torusknot.SourceTreeNotMAS",
    "~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist",
    "~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist",
    "~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState",
  ]
end
