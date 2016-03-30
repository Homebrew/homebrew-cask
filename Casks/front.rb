cask 'front' do
  version :latest
  sha256 :no_check

  url 'https://dl.frontapp.com/osx/front.dmg'
  name 'Front'
  homepage 'https://frontapp.com/'
  license :gratis

  app 'Front.app'
end
