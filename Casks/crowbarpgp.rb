cask 'crowbarpgp' do
  version '1.0.1'
  sha256 :no_check

  url 'http://www.georgestarcher.com/crowbarPGP/crowbarPGP-v1.0.1.dmg'
  name 'crowbarPGP'
  homepage 'http://www.georgestarcher.com/software/'
  license :unknown

  # developer says that he doesn't plan to recreate for sierra
  depends_on macos: '<= :el_capitan'

  app 'crowbarPGP.app'
end
