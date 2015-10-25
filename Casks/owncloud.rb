cask :v1 => 'owncloud' do
  version '2.0.2.2818'
  sha256 '99c248edb9872858031d21da2cb598bdd9e4fc4a4e62c6e14626e32b2785d541'

  url "https://download.owncloud.com/desktop/stable/ownCloud-#{version}.pkg"
  name 'ownCloud'
  homepage 'https://owncloud.com/'
  license :gpl

  pkg "ownCloud-#{version}.pkg"

  uninstall :pkgutil => [
                         'com.ownCloud.client',
                         'com.owncCloud.finderPlugin',
                        ]
end
