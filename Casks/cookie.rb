cask 'cookie' do
  version '5.1.3'
  sha256 '2e6a6aa0bdf7d9c51c1a9acc644ddd0fd355f9d167d06e2727ba988d8364e70a'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.zip"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '7a98d53f49fa67c618c421211a0fee137acc9158141f0fcb1d976e90900572de'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'

  app 'Cookie.app'
end
