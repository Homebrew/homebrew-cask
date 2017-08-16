cask 'front' do
  version :latest
  sha256 :no_check

  url 'https://dl.frontapp.com/macos/Front.dmg'
  name 'Front'
  homepage 'https://frontapp.com/'

  app 'Front.app'
end
