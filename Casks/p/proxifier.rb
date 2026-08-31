cask "proxifier" do
  on_big_sur :or_older do
    version "3.8"
    sha256 "1f8bbad340500ad49c541570ba3233a88e60fd4e02030f596e7d32f93d244020"

    url "https://www.proxifier.com/download/legacy/ProxifierMac#{version.no_dots}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "3.15"
    sha256 :no_check

    url "https://www.proxifier.com/download/ProxifierMac.dmg"

    livecheck do
      url "https://www.proxifier.com/changelog/mac.html"
      regex(/Version\s*(\d+(?:\.\d+)+)/i)
    end
  end

  name "Proxifier"
  desc "Proxy client"
  homepage "https://www.proxifier.com/"

  depends_on :macos

  app "Proxifier.app"

  zap trash: [
    "~/Library/Application Scripts/com.initex.proxifier.*.macos",
    "~/Library/Application Support/Proxifier",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Proxifier Help*",
    "~/Library/Caches/com.initex.proxifier.macosx",
    "~/Library/Containers/com.initex.proxifier.*.macos",
    "~/Library/Group Containers/*.com.initex.proxifier.*.macos",
    "~/Library/Logs/Proxifier",
    "~/Library/Preferences/com.initex.proxifier.macosx.plist",
    "~/Library/Saved Application State/com.initex.proxifier.macosx.savedState",
  ]
end
