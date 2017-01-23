cask 'bzflag' do
  version '2.4.8'
  sha256 '3b4bdd1b98565b998ff7b6915670cb30b81358203aed27423afb0a5f2bd3a5a9'

  url "https://download.bzflag.org/bzflag/osx/#{version}/BZFlag-#{version}-macOS.zip"
  appcast 'https://github.com/BZFlag-Dev/bzflag/releases.atom',
          checkpoint: '4662d8b609304cd7be193cfd5ef6504670d98d52fba4e3f6a0546db7d76a6451'
  name 'BZFlag'
  homepage 'https://bzflag.org/'

  app "BZFlag-#{version}.app"
end
