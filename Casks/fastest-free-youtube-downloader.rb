cask :v1 => 'fastest-free-youtube-downloader' do
  version '5.0'
  sha256 'd301a1e6243c9e79f3ccac85ab19d3d8dd6c1ef3ddd81ba7006e539f2c88b71c'

  url "http://digitalocean.appengine-distro.com/YTD/Installers/#{version}/FastestFreeYouTubeDownloader-Setup.dmg"
  homepage 'https://www.fastestvideodownloader.com/'
  license :unknown

  app 'Fastest Free YouTube Downloader.app'
end
