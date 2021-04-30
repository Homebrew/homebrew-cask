cask "omnifocus" do
  if MacOS.version <= :yosemite
    version "2.7.4"
    sha256 "a273e55c15f82540fe305344f9e49ad7d0d9c326ba2c37c312076ffd73780f80"
    url "https://downloads.omnigroup.com/software/MacOSX/10.10/OmniFocus-#{version}.dmg"
  elsif MacOS.version <= :el_capitan
    version "2.10"
    sha256 "e808a72e60cdff9ff5aa1046d856bf62d6418e4915248816c4640e32e52fd8e8"
    url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniFocus-#{version}.dmg"
  elsif MacOS.version <= :sierra
    version "2.12.4"
    sha256 "8a2dc53331dba804f6781773fef546a03c181fc4ff0eb7ee4f871c10342621f0"
    url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniFocus-#{version}.dmg"
  elsif MacOS.version <= :high_sierra
    version "3.4.6"
    sha256 "b770b046c2c59f6e55f54d0ad822d5aa755a18aa201d333341de14ebbbcc6a85"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniFocus-#{version}.dmg"
  else
    version "3.11.7"
    sha256 "21c0a63b6bd8c8ff3e5067f4ccd0ab16c9fd65815a7305e184ed27723bd0aa15"
    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniFocus-#{version}.dmg"
  end

  name "OmniFocus"
  desc "Scheduling application focusing on organization"
  homepage "https://www.omnigroup.com/omnifocus/"

  livecheck do
    url "https://www.omnigroup.com/download/latest/omnifocus/"
    strategy :header_match
  end

  auto_updates true

  app "OmniFocus.app"

  uninstall quit: "com.omnigroup.OmniFocus#{version.major}"

  zap trash: [
    "~/Library/Containers/com.omnigroup.OmniFocus#{version}",
    "~/Library/Preferences/com.omnigroup.OmniFocus#{version}.LSSharedFileList.plist",
    "~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist",
    "~/Library/Caches/Metadata/com.omnigroup.OmniFocus#{version}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnifocus#{version}.sfl*",
    "~/Library/Group Containers/34YW5XSRB7.com.omnigroup.OmniFocus",
    "~/Library/Saved Application State/com.omnigroup.OmniFocus#{version}.savedState",
  ]
end
