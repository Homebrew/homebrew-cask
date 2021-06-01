cask "atok" do
  version "2021,32"
  sha256 "8e732b080d88a7b2e47ef49bd1f3e71daa3b4c1370f4f151ec09e5cbd5d227a2"

  url "https://gate.justsystems.com/download/atok/ut/mac/at#{version.after_comma}try.dmg"
  name "ATOK"
  desc "Japanese input method editor (IME) produced by JustSystems"
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
