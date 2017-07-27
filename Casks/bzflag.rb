cask 'bzflag' do
  version '2.4.10'
  sha256 '7e7147380f03e51acf5f12353454f539a25ccc3b90a853b8cf8fcabc11b0afc0'

  url "https://download.bzflag.org/bzflag/osx/#{version}/BZFlag-#{version}-macOS.zip"
  appcast 'https://github.com/BZFlag-Dev/bzflag/releases.atom',
          checkpoint: '3977e768b79641b31bccaddf102b29a8c8e53ed1f5f238bd70a2bb28d9ec5196'
  name 'BZFlag'
  homepage 'https://www.bzflag.org/'

  app "BZFlag-#{version}.app"
end
