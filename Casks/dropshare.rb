cask 'dropshare' do
  version '4.5.1,4555'
  sha256 '1ecdea9e38c819d26377049e6d3138d4a1796ceefdf45ca034ce23185a15c6c0'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml",
          checkpoint: '83b90981d5801fdf6e25ba2166c9f1f1306d8a587161f57bc9ab1b558837fde3'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'

  app "Dropshare #{version.major}.app"
end
