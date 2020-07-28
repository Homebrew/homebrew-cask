cask "atok" do
  version "2017,31"
  sha256 "9d460310b5d44de9585f5429c17006684f5412ba62ac1f4ab47af6e523bbdb80"

  url "https://gate.justsystems.com/download/atok/ut/mac/at#{version.after_comma}try.dmg"
  name "ATOK"
  homepage "https://www.justsystems.com/jp/products/atokmac/"

  pkg "ATOK インストーラ.pkg"

  uninstall pkgutil:   [
    "com.justsystems.atok#{version.after_comma}.doc.pkg",
    "com.justsystems.atok#{version.after_comma}.pkg",
    "com.justsystems.atok#{version.after_comma}.quicklook.pkg",
    "com.justsystems.atok#{version.after_comma}.sync.pkg",
    "com.justsystems.JustOnlineUpdate.pkg",
    "com.justsystems.pkg.lma",
  ],
            launchctl: [
              "com.justsystems.inputmethod.atok#{version.after_comma}",
              "com.justsystems.launchd.jslmaUI",
              "com.justsystems.launchd.UpdateChecker",
              "com.justsystems.launchd.Atok#{version.after_comma}.AlBg",
              "com.justsystems.atok#{version.after_comma}.enabler",
              "com.justsystems.OnlineUpdate",
              "com.justsystems.launchd.jslmad",
            ],
            quit:      "com.justsystems.UpdateChecker"
end
