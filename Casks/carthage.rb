cask :v1 => 'carthage' do
  version '0.5.2'
  sha256 '5a7a5fe8bbf3a0964989dbeb0a1bab989d83dd1d9074204fb2f6030b61a13ee7'

  url "https://github.com/Carthage/Carthage/releases/download/#{version}/Carthage.pkg"
  homepage 'https://github.com/Carthage/Carthage'
  license :oss

  pkg 'Carthage.pkg'

  uninstall :pkgutil => 'org.carthage.carthage'
end
