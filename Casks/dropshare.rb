cask 'dropshare' do
  version '4.5.3,4563'
  sha256 '0c73efd00bb23b95c23c64438c7dc742460f99896f7b101b1893065567275e71'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version.major}-#{version.after_comma}.app.zip"
  appcast "https://getdropsha.re/sparkle/Dropshare#{version.major}.xml",
          checkpoint: '310036456ef3fcb9f818b5335dbb40f08ee16a07a50a01a6547ef3ada8a5c64d'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'

  app "Dropshare #{version.major}.app"
end
