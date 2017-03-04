cask 'heka' do
  version '0.10.0'
  sha256 '9416e6ce0e3fe56926df86607d8e0c286cd0e9773d9038c80887558ae6f41c55'

  url "https://github.com/mozilla-services/heka/releases/download/v#{version}/heka-#{version.dots_to_underscores}-darwin-amd64.dmg"
  appcast 'https://github.com/mozilla-services/heka/releases.atom',
          checkpoint: '0fd98cf518a904404c8d9b07a4b1e04138ce07d39dd6e71b73a7ae7ed847cd58'
  name 'Mozilla heka'
  homepage 'https://github.com/mozilla-services/heka'

  pkg "heka-#{version.dots_to_underscores}-darwin-amd64.pkg"

  uninstall pkgutil: 'com.Mozilla.heka'
end
