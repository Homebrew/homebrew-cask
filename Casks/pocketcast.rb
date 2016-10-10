cask 'pocketcast' do
  version '1.25'
  sha256 '01091dfc5f6819a800c5da51230e272dbecfdbac8a93d12124820a0cd0bb74b7'

  url "https://github.com/mortenjust/PocketCastsOSX/releases/download/#{version}/PocketCast#{version.no_dots}.zip"
  appcast 'https://github.com/mortenjust/PocketCastsOSX/releases.atom',
          checkpoint: '6f976b988d5d821d25489abdcaa28adc5193d8fec545f95821838a458f1e195e'
  name 'Pocket Casts for Mac'
  homepage 'https://github.com/mortenjust/PocketCastsOSX'

  app 'PocketCast.app'
end
