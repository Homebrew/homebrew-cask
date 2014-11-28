cask :v1 => 'imagemin' do
  version '0.1.0'
  sha256 '8a4304d37eaa8a71fbeb550aece6a80c98dbcdf7a9fb6eb09faae1ad93df40d6'

  url "https://github.com/kevva/imagemin-app/releases/download/#{version}/imagemin-app-v#{version}-darwin.zip"
  homepage 'https://github.com/kevva/imagemin-app'
  license :mit

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/4701
  app "imagemin-app-v#{version}-darwin/Atom.app", :target => 'imagemin.app'
end
