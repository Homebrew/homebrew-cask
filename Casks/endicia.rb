cask 'endicia' do
  version '2.16.4v733'
  sha256 '19e5944f2e9cef1e7d45b8d53ac386a9a46a6d20c043b6c9818b1388ee8b96c8'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.no_dots}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml',
          checkpoint: 'ce8a285edb70261c703b78aa8dd6b4f7e60b886e78f8798303b3f034f8ed549a'
  name 'Endicia for Mac'
  homepage 'http://endiciaformac.com/'

  app 'Endicia.app'
end
