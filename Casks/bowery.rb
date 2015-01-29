cask :v1 => 'bowery' do
  version '0.0.0'
  sha256 '86fc89cab7f4cfca1e85689c228cde83612e2dc20648bbd45ae79160159ae2e3'

  url "http://desktop.bowery.io/#{version}_darwin_amd64.zip"
  name 'Bowery'
  homepage 'http://bowery.io/'
  license :freemium

  pkg 'bowery.pkg'

  uninstall :pkgutil => 'com.bowery.desktop'
end
