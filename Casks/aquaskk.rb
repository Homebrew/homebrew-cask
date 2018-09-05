cask 'aquaskk' do
  version '4.6.1'
  sha256 '13b3470dee548cea3cd5431551edaf8f1a1b6bc1eff948b530d11aad584dcf58'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.pkg"
  appcast 'https://github.com/codefirst/aquaskk/releases.atom'
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'

  pkg "AquaSKK-#{version}.pkg"

  uninstall pkgutil: 'org.codefirst.aquaskk.pkg'
end
