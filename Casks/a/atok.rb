cask "atok" do
  version "34.1"
  sha256 "7c5013c03d8ff8f788d158ac80d39ca4aae00d52fd520f81723ecd99fd733fee"

  url "https://gate.justsystems.com/download/atok/ut/mac/at#{version.dots_to_underscores}.dmg"
  name "ATOK"
  desc "Japanese input method editor (IME) produced by JustSystems"
  homepage "https://www.justsystems.com/jp/products/atokmac/"

  livecheck do
    url "https://mypassport.atok.com/install/install_mac.html"
    regex(/href=.*at[._-]?v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  pkg "ATOK インストーラ.pkg"

  uninstall launchctl: [
              "com.justsystems.atok#{version.major}.enabler",
              "com.justsystems.inputmethod.atok#{version.major}",
              "com.justsystems.launchd.Atok#{version.major}.AlBg",
              "com.justsystems.launchd.jslmad",
              "com.justsystems.launchd.jslmaUI",
              "com.justsystems.launchd.UpdateChecker",
              "com.justsystems.OnlineUpdate",
            ],
            quit:      "com.justsystems.UpdateChecker",
            pkgutil:   [
              "com.justsystems.atok#{version.major}.doc.pkg",
              "com.justsystems.atok#{version.major}.pkg",
              "com.justsystems.atok#{version.major}.quicklook.pkg",
              "com.justsystems.atok#{version.major}.sync.pkg",
              "com.justsystems.JustOnlineUpdate.pkg",
              "com.justsystems.pkg.lma",
            ]

  zap delete: [
        "/Library/Application Support/JustSystems",
        "/Library/Application Support/Preferences/JustSystems",
        "/Library/JustSystems",
        "/Library/Preferences/com.justsystems.*.plist",
        "/Library/Preferences/JustSystems",
      ],
      trash:  [
        "~/Library/Caches/com.justsystems.OnlineUpdate",
        "~/Library/HTTPStorages/com.justsystems.OnlineUpdate",
        "~/Library/Preferences/com.justsystems.OnlineUpdate.plist",
        "~/Library/Saved Application State/com.justsystems.OnlineUpdate.savedState",
      ]
end
