cask 'bzflag' do
  version '2.4.10'
  sha256 '7e7147380f03e51acf5f12353454f539a25ccc3b90a853b8cf8fcabc11b0afc0'

  url "https://download.bzflag.org/bzflag/osx/#{version}/BZFlag-#{version}-macOS.zip"
  appcast 'https://github.com/BZFlag-Dev/bzflag/releases.atom',
          checkpoint: 'bf375854bf8e5da22b1c39a064f92c6f1cae3143f240342505c383e3ce18caf2'
  name 'BZFlag'
  homepage 'https://www.bzflag.org/'

  app "BZFlag-#{version}.app"
end
