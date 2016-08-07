cask 'sugarsync' do
  version :latest
  sha256 :no_check

  url 'https://www.sugarsync.com/downloads/p/InstallSugarSync.dmg'
  name 'SugarSync'
  homepage 'https://www.sugarsync.com/'
  license :commercial

  app 'SugarSync.app'
end
