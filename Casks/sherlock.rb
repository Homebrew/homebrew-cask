cask 'sherlock' do
  version :latest
  sha256 :no_check

  url 'https://sherlock.inspiredcode.io/download-dmg'
  name 'Sherlock'
  homepage 'https://sherlock.inspiredcode.io/'

  app 'Sherlock.app'
end
