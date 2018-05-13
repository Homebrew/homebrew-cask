cask 'aquaskk' do
  version '4.5.0'
  sha256 '4d88e3b7902d4b44f013fa56757f1a9402bd1bb0402bfbcd490b13063800a130'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.pkg"
  appcast 'https://github.com/codefirst/aquaskk/releases.atom',
          checkpoint: '20bab39164448a9e07102704cac6e2b814d0a13b829cd268c01c14058c5d8eef'
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'

  pkg "AquaSKK-#{version}.pkg"

  uninstall pkgutil: 'org.codefirst.aquaskk.pkg'
end
