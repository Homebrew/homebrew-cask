cask :v1 => 'itunes' do
  version '12.2.2'
  sha256 '3c2b746fd8450eb950e92b5b332a9549eb03ddbbc4d2ae0cb722c8b81dd3365a'

  url 'https://secure-appldnld.apple.com/itunes12/031-31872-20150813-B2459290-41B7-11E5-A64D-900D11BA098F/iTunes12.2.2.dmg'
  name 'iTunes'
  homepage 'http://www.apple.com/itunes/'
  license :gratis

  pkg 'Install iTunes.pkg'
end
