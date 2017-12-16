cask 'dynalist' do
  version :latest
  sha256 :no_check

  url 'https://dynalist.io/standalone/download?file=Dynalist.dmg'
  name 'Dynalist'
  homepage 'https://dynalist.io/'

  app 'Dynalist.app'
end
