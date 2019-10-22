cask 'qubibox' do
  version :latest
  sha256 :no_check

  url 'https://qubibox.com/files/QubiBox.dmg'
  name 'QubiBox'
  homepage 'https://qubibox.com/'

  app 'QubiBox.app'
end
