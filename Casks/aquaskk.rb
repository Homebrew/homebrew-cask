cask 'aquaskk' do
  version '4.7.0'
  sha256 '386434b025e62bf399d7ceb408e6f85212c82bed54e778a6dc187a8ef2dc9a27'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.pkg"
  appcast 'https://github.com/codefirst/aquaskk/releases.atom'
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'

  pkg "AquaSKK-#{version}.pkg"

  uninstall pkgutil: 'org.codefirst.aquaskk.pkg'
end
