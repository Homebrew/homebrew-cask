cask "leigod" do
  arch arm: "arm64", intel: "x64"

  version "1.1.4"
  sha256 arm:   "a8acf2522d2f997aa02bbe8c6cc473cfd2044e6c3ea63d12c4ba0522cd85c4e4",
         intel: "a5143ade681624f93e9d22341cb4c955bb064a80150793f4498d1d14b53f9093"

  url "https://update.leigod.com/soft/leigod/osx/1.0.0.0/LeiGodSetup_#{version}_#{arch}.dmg"
  name "LeiGod"
  name "雷神加速器"
  desc "Game network accelerator"
  homepage "https://www.leigod.com/"

  livecheck do
    skip "No version information available"
  end

  depends_on :macos

  app "雷神加速器.app"

  uninstall launchctl: "com.leigod.helper",
            quit:      "com.leigod.macacc",
            delete:    [
              "/Library/LaunchDaemons/com.leigod.helper.plist",
              "/Library/PrivilegedHelperTools/leigod",
            ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.leigod.macacc.sfl*",
    "~/Library/Application Support/leigod",
    "~/Library/Preferences/com.leigod.macacc.plist",
  ]
end
