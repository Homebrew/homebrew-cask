cask 'aquaskk' do
  version '4.4.6'
  sha256 'c6635e2f34672dfaa1ca3fc5f1eb831d21997c5baa278a8840e6358be4c6c563'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK.pkg"
  appcast 'https://github.com/codefirst/aquaskk/releases.atom',
          checkpoint: 'e88cfab393d7724d48ff5f0cc19433db68d921e65c1cdd83efc24c89f6e02106'
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'

  pkg 'AquaSKK.pkg'

  uninstall pkgutil: 'org.codefirst.aquaskk.pkg'
end
