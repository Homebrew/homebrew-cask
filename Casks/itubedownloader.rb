cask 'itubedownloader' do
  version '6.3.4,1516650380'
  sha256 'f816ada880aabe7731f49141fc8265b4a5ba69e94a0d5d11987ac6a1a0fa91bb'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/#{version.before_comma.no_dots}/#{version.after_comma}/iTubeDownloader-#{version.before_comma.no_dots}.zip"
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml',
          checkpoint: 'd04a9f42fc2e9a223db149079f7850f990267765407e3428d9ff46da427c5d2e'
  name 'iTubeDownloader'
  homepage 'http://alphasoftware.co/'

  depends_on macos: '>= :yosemite'

  app 'iTubeDownloader.app'
end
