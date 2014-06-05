class Imagemin < Cask
  url 'https://github.com/kevva/imagemin-app/releases/download/0.1.0/imagemin-app-v0.1.0-darwin.zip'
  homepage 'https://github.com/kevva/imagemin-app'
  version '0.1.0'
  sha256 '8a4304d37eaa8a71fbeb550aece6a80c98dbcdf7a9fb6eb09faae1ad93df40d6'
  link 'imagemin-app-v0.1.0-darwin/Atom.app', :target => 'imagemin.app'
end
