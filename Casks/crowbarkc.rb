cask 'crowbarkc' do
  version '1.0'
  sha256 :no_check

  url 'http://www.georgestarcher.com/crowbarKC/crowbarKC-v1.0.dmg'
  name 'crowbarKC'
  homepage 'http://www.georgestarcher.com/software/'
  license :unknown

  # developer says that he doesn't plan to recreate for sierra
  depends_on macos: '<= :el_capitan'

  app 'crowbarKC.app'
end
