cask :v1 => 'au-lab' do
  version :latest
  sha256 :no_check

  url 'http://images.apple.com/itunes/mastered-for-itunes/docs/au_lab.zip'
  homepage 'http://www.apple.com/itunes/mastered-for-itunes/'
  license :gratis

  container :nested => 'AU Lab Image.dmg'
  app 'AU Lab.app'
end
