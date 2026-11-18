cask "leigod" do
  arch arm: "arm64", intel: "x64"

  version "1.1.5"
  sha256 arm:   "7f291afc6a866ee9de72c7e0a1d45e1216339f7f21d3c763d095fd8df341aa30",
         intel: "36f98bc4e7af3ec8df6110b796376242c9428d75fda928954ec8c296121afd64"

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
