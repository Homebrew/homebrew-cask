cask 'au-lab' do
  version :latest
  sha256 :no_check

  url 'http://images.apple.com/itunes/mastered-for-itunes/docs/au_lab.zip'
  name 'AU Lab'
  homepage 'https://www.apple.com/itunes/mastered-for-itunes/'
  license :gratis

  container :nested => 'AU Lab Image.dmg'

  app 'AU Lab.app'
end
