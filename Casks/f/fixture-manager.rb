cask "fixture-manager" do
  version "1.1.0"
  sha256 :no_check

  url "https://cdn.inmusicbrands.com/soundswitch/FixtureManager/files/FixtureManagerInstaller.pkg",
      verified: "cdn.inmusicbrands.com/soundswitch/FixtureManager/files/"
  name "Fixture Manager"
  desc "Create and edit lighting fixture profiles"
  homepage "https://support.soundswitch.com/en/support/solutions/articles/69000844505-soundswitch-fixture-manager-complete-user-guide"

  livecheck do
    skip "No version information available"
  end

  pkg "FixtureManagerInstaller.pkg"

  uninstall pkgutil: "com.InMusic Brands - Arkaos NV.Fixture Manager.FixtureManager"

  # No zap stanza required
end
