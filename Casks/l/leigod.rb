cask "leigod" do
  arch arm: "arm64", intel: "x64"

  version "1.1.6"
  sha256 arm:   "a063d64f459b728f1b324780f7f12ac420712cc4fa84f08af5da2e68b0ab25ac",
         intel: "c8bfe91fff51eabcbc383f32e0599a241ad6d744fbedf747febecbf7dc0c2de9"

  url "https://update.leigod.com/soft/leigod/osx/1.0.0.0/LeiGodSetup_#{version}_#{arch}.dmg"
  name "LeiGod"
  name "雷神加速器"
  desc "Game network accelerator"
  homepage "https://www.leigod.com/"

  livecheck do
    url "https://www.leigod.com/configs.json"
    regex(/LeiGodSetup[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}/i)
    strategy :json do |json, regex|
      json["mac"]&.values&.filter_map do |item|
        next unless (match = item["download_url"]&.match(regex))

        match[1]
      end
    end
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
