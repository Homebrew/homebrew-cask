cask "mrcode" do
  version "1.58.2"
  sha256 "b35f4c470ac1205947a76f1b48a40a2e6294f2401fc2de3a0ec59dd9dab16373"

  url "https://github.com/zokugun/MrCode/releases/download/#{version}/MrCode.x64.#{version}.dmg"
  name "MrCode"
  desc "Is an IDE based on VSCode / VSCodium"
  homepage "https://github.com/zokugun/MrCode"

  auto_updates true

  app "MrCode.app"
  binary "#{appdir}/MrCode.app/Contents/Resources/app/bin/mrcode"

  zap trash: [
    "~/Library/Application Support/MrCode",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.zokugun.mrcode.sfl*",
    "~/Library/Caches/org.zokugun.mrcode",
    "~/Library/Caches/org.zokugun.mrcode.ShipIt",
    "~/Library/Preferences/ByHost/org.zokugun.mrcode.ShipIt.*.plist",
    "~/Library/Preferences/org.zokugun.mrcode.helper.plist",
    "~/Library/Preferences/org.zokugun.mrcode.plist",
    "~/Library/Saved Application State/org.zokugun.mrcode.savedState",
    "~/.mrcode",
  ]
end
