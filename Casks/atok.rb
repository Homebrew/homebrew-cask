cask "atok" do
  version "32.6"
  sha256 "5b924c390a7e28bf74ff40f28f6365fa91248c265cfe0f953c29db1530bb0932"

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

  uninstall pkgutil:   [
              "com.justsystems.atok#{version.major}.doc.pkg",
              "com.justsystems.atok#{version.major}.pkg",
              "com.justsystems.atok#{version.major}.quicklook.pkg",
              "com.justsystems.atok#{version.major}.sync.pkg",
              "com.justsystems.JustOnlineUpdate.pkg",
              "com.justsystems.pkg.lma",
            ],
            launchctl: [
              "com.justsystems.atok#{version.major}.enabler",
              "com.justsystems.inputmethod.atok#{version.major}",
              "com.justsystems.launchd.Atok#{version.major}.AlBg",
              "com.justsystems.launchd.jslmad",
              "com.justsystems.launchd.jslmaUI",
              "com.justsystems.launchd.UpdateChecker",
              "com.justsystems.OnlineUpdate",
            ],
            quit:      "com.justsystems.UpdateChecker"
end
