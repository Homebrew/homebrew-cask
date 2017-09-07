cask 'go-server' do
  version '17.7.0-5147'
  sha256 '4c79237b7ba597d2c0bd3f1663965dac0ea31838d73a40bc9040e47e9fd1c269'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'f1cba4692ca4f0878fd95f276a55c43a4c2a435a96eae547070ac430689e19f1'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
