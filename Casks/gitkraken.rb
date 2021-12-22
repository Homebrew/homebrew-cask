cask "gitkraken" do
  version "8.2.1"
  sha256 "40269f91fd979c7347cbedddbe719bd224cd303c3c55842e76cea6273ef8696a"

  url "https://release.axocdn.com/darwin/GitKraken-v#{version}.zip",
      verified: "release.axocdn.com/darwin/"
  name "GitKraken"
  desc "Git client focusing on productivity"
  homepage "https://www.gitkraken.com/"

  livecheck do
    url "https://support.gitkraken.com/release-notes/current/"
    regex(/Version\s(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "GitKraken.app"

  # Workaround for GitKraken Big Sur and later Performance Issues
  # See https://www.gitkraken.com/blog/workaround-gitkraken-big-sur-issues
  if MacOS.version >= :big_sur
    postflight do
      system_command "xattr",
                     args: ["-d", "com.apple.quarantine", "#{appdir}/GitKraken.app"]
      system_command "/usr/bin/codesign",
                     args: [
                       "--remove-signature",
                       "#{appdir}/GitKraken.app/Contents/Frameworks/GitKraken\ Helper\ \(Renderer\).app"
                     ]
    end
  end

  zap trash: [
    "~/.gitkraken",
    "~/Library/Application Support/com.axosoft.gitkraken.ShipIt",
    "~/Library/Application Support/GitKraken",
    "~/Library/Caches/com.axosoft.gitkraken.ShipIt",
    "~/Library/Caches/com.axosoft.gitkraken",
    "~/Library/Caches/GitKraken",
    "~/Library/Cookies/com.axosoft.gitkraken.binarycookies",
    "~/Library/Preferences/com.axosoft.gitkraken.helper.plist",
    "~/Library/Preferences/com.axosoft.gitkraken.plist",
    "~/Library/Saved Application State/com.axosoft.gitkraken.savedState",
  ]
end
