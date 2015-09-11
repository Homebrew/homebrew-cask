cask :v1 => 'fastest-free-youtube-downloader' do
  version '5.0'
  sha256 'd301a1e6243c9e79f3ccac85ab19d3d8dd6c1ef3ddd81ba7006e539f2c88b71c'

  # appengine-distro.com is the official download host per the vendor homepage
  url "http://digitalocean.appengine-distro.com/YTD/Installers/#{version}/FastestFreeYouTubeDownloader-Setup.dmg"
  name 'Fastest YouTube Downloader'
  homepage 'http://www.fastestvideodownloader.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Fastest Free YouTube Downloader.app'
end
