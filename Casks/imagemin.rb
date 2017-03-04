cask 'imagemin' do
  version '0.1.0'
  sha256 '8a4304d37eaa8a71fbeb550aece6a80c98dbcdf7a9fb6eb09faae1ad93df40d6'

  url "https://github.com/imagemin/imagemin-app/releases/download/#{version}/imagemin-app-v#{version}-darwin.zip"
  appcast 'https://github.com/imagemin/imagemin-app/releases.atom',
          checkpoint: '941c5b106f525dfd9e9459aef979c2224a8d00272313b75811bc2aa3ad48bcf5'
  name 'imagemin'
  homepage 'https://github.com/imagemin/imagemin-app'

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/4701
  app "imagemin-app-v#{version}-darwin/Atom.app", target: 'imagemin.app'
end
