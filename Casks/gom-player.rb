cask 'gom-player' do
  version '1.059'
  sha256 'cf97740bc09a172a93f9b2bb1b10cf5afdb2073465527439ecc617af82c7f186'

  url 'https://app.gomtv.com/GOMForMac/gom.pkg'
  name 'GOM Player'
  name '곰플레이어'
  homepage 'http://gom2.gomtv.com/release/gom_player_mac.htm'

  pkg 'gom.pkg'

  uninstall pkgutil: [
                       'Gretech.com.gomPlayer.GOMPlayer.pkg',
                       'Gretech.com.gomPlayer.GOMTVDownloadManager.pkg',
                       'Gretech.com.gomPlayer.Uninstall.pkg',
                       'Gretech.com.gomPlayer.FindeSubtitleProc.pkg',
                       'Gretech.com.gomPlayer.GOMPlugin.pkg',
                       'Gretech.com.gomPlayer.GOMTVDownloadPlugin.pkg',
                       'Gretech.com.gomPlayer.UpdaterGOM.pkg',
                       'Gretech.com.gomPlayer.libavcodec.56.pkg',
                       'Gretech.com.gomPlayer.libavformat.56.pkg',
                       'Gretech.com.gomPlayer.libavutil.54.pkg',
                       'Gretech.com.gomPlayer.libswresample.1.pkg',
                       'Gretech.com.gomPlayer.preinstall.pkg',
                     ]
end
