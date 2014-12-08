cask :v1 => 'carthage' do
  version '0.3'
  sha256 '91a836694d9bd6ff374c76bc3b3c5ddaecb5fdcf25f56e4fad5ae847f5a60916'

  url "https://github.com/Carthage/Carthage/releases/download/#{version}/Carthage.pkg"
  homepage 'https://github.com/Carthage/Carthage'
  license :oss

  pkg 'Carthage.pkg'

  uninstall :pkgutil => 'org.carthage.carthage'
end
