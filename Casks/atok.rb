cask "atok" do
  # version <release_year>,<version>,<file_suffix>
  version "2021,32.1.0:try3"
  sha256 "6ca2775c73489a88c3190bacccfc8531023682ef355dc4b7b5f7f1bb82383814"

  url "https://gate.justsystems.com/download/atok/ut/mac/at#{version.csv.second.major}#{version.after_colon}.dmg"
  name "ATOK"
  desc "Japanese input method editor (IME) produced by JustSystems"
  homepage "https://www.justsystems.com/jp/products/atokmac/"

  livecheck do
    url "https://mypassport.atok.com/install/install_mac.html"
    strategy :page_match do |page|
      match = page.match(%r{href="https:.*/mac/at(\d+)(try\d*)\.dmg"}im)
      next if match.blank?

      "#{version.before_comma},#{match[1]}.#{version.csv.second.minor}.#{version.csv.second.patch}:#{match[2]}"
    end
  end

  pkg "ATOK インストーラ.pkg"

  uninstall pkgutil:   [
    "com.justsystems.atok#{version.csv.second.major}.doc.pkg",
    "com.justsystems.atok#{version.csv.second.major}.pkg",
    "com.justsystems.atok#{version.csv.second.major}.quicklook.pkg",
    "com.justsystems.atok#{version.csv.second.major}.sync.pkg",
    "com.justsystems.JustOnlineUpdate.pkg",
    "com.justsystems.pkg.lma",
  ],
            launchctl: [
              "com.justsystems.inputmethod.atok#{version.csv.second.major}",
              "com.justsystems.launchd.jslmaUI",
              "com.justsystems.launchd.UpdateChecker",
              "com.justsystems.launchd.Atok#{version.csv.second.major}.AlBg",
              "com.justsystems.atok#{version.csv.second.major}.enabler",
              "com.justsystems.OnlineUpdate",
              "com.justsystems.launchd.jslmad",
            ],
            quit:      "com.justsystems.UpdateChecker"
end
