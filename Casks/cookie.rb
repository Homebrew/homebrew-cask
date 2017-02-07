cask 'cookie' do
  version '5.2.2'
  sha256 '292807d489db35f54497a9bbc38e5beb2106f57265e32dc5acea09f31986d86e'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.zip"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '6355be512e41644cde806c9d5945ce632e8b155c33837333531eeaf076c92993'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'

  app 'Cookie.app'
end
