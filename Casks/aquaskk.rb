cask 'aquaskk' do
  version '4.6.0'
  sha256 '58ae310d88f3ad37140ca00d09b4d4c921f43f7d2c54608ca4b422151ba31e58'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.pkg"
  appcast 'https://github.com/codefirst/aquaskk/releases.atom'
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'

  pkg "AquaSKK-#{version}.pkg"

  uninstall pkgutil: 'org.codefirst.aquaskk.pkg'
end
