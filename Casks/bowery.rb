cask :v1 => 'bowery' do
  version '3.5.0'
  sha256 '10b6d86f6e137ae274f794c73b433ae7ded60f177bbcfadad9532a66da1d7681'

  url "http://desktop.bowery.io/#{version}_darwin_amd64.zip"
  name 'Bowery'
  homepage 'http://bowery.io/'
  license :freemium

  pkg 'bowery.pkg'

  uninstall :pkgutil => 'com.bowery.desktop'
end
