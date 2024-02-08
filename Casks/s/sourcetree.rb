cask "sourcetree" do
  on_sierra :or_older do
    version "2.7.6a"
    sha256 "d60614e9ab603e0ed158b6473c36e7944b2908d9943e332c505eba03dc1d829e"

    url "https://downloads.atlassian.com/software/sourcetree/Sourcetree_#{version}.zip",
        verified: "downloads.atlassian.com/software/sourcetree/"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :el_capitan"
  end
  on_high_sierra do
    version "3.2.1,225"
    sha256 "4bd82affa3402814c3d07ff613fbc8f45da8b0cda294d498ffbb0667bf729c9f"

    url "https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_#{version.csv.first}_#{version.csv.second}.zip",
        verified: "product-downloads.atlassian.com/software/sourcetree/ga/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "4.2.1,248"
    sha256 "3dac6ab514c7debe960339e2aee99f018342a41baf743dbb59524728b373561f"

    url "https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_#{version.csv.first}_#{version.csv.second}.zip",
        verified: "product-downloads.atlassian.com/software/sourcetree/ga/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "4.2.6,261"
    sha256 "0e56c21432872a99871f712bb09941681d025db723ca22e0b34095a4eed5217a"

    url "https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_#{version.csv.first}_#{version.csv.second}.zip",
        verified: "product-downloads.atlassian.com/software/sourcetree/ga/"

    livecheck do
      url "https://product-downloads.atlassian.com/software/sourcetree/Appcast/SparkleAppcast.xml"
      strategy :sparkle
    end

    depends_on macos: ">= :catalina"
  end

  name "Atlassian SourceTree"
  desc "Graphical client for Git version control"
  homepage "https://www.sourcetreeapp.com/"

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
