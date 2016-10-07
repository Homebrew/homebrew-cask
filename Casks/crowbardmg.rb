cask 'crowbardmg' do
  version '1.0'
  sha256 :no_check

  url "http://www.georgestarcher.com/crowbarDMG/crowbarDMG-v1.0.dmg"
  name 'crowbarDMG'
  homepage 'http://www.georgestarcher.com/software/'
  license :unknown

  app 'crowbarDMG.app'

  # developer says that he doesn't plan to recreate for sierra
  depends_on macos: '<= :el_capitan'
end