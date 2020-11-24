cask "kiwi-for-g-suite" do
  version "2.0.39v"
  sha256 "7d09c77d7ed6ac29244a53a0174fbb8c4655745d971372b6327a446592c47839"

  # kiwiforgsuite.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://kiwiforgsuite.s3.amazonaws.com/mac/release/Kiwi+for+G+Suite.pkg"
  appcast "https://rink.hockeyapp.net/api/2/apps/0e823ae8232540248fd3980052c56495/"
  name "Kiwi For G Suite"
  homepage "https://www.kiwiforgmail.com/"

  auto_updates true

  pkg "Kiwi for G Suite.pkg"

  uninstall pkgutil: "com.zive.kiwi.qb-pkg.gsuite",
            delete:  "/Applications/Kiwi for G Suite.app"
end
