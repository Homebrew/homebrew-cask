cask 'dropshare' do
  version '4.5.2,4558'
  sha256 '4c0d5d73eb003684ab9b0f1e543f5bd8bb5d733f853c97b357d4d3250a3fa9aa'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml",
          checkpoint: '18b2b7d72d2c911ee76b4aa98747d5592d93a5fef11ae84035e1d8c64d614fea'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'

  app "Dropshare #{version.major}.app"
end
