cask 'casio-screen-receiver' do
  version '3.02,b:4'
  sha256 '5eaff7fd7894d483534d82e7fbc6b77a6d304afa580e10b1c7bce38a3a69e07a'

  url "https://edu.casio.com/education/support_software/dl/screen_Receiver/screenrecv_inst_#{version.before_comma.no_dots}#{version.after_comma.before_colon}_#{version.after_colon}.zip"
  name 'Casio Screen Receiver'
  homepage 'https://edu.casio.com/education/support_software/'

  pkg "ScreenReceiver_Ver.#{version.before_comma}_#{version.after_comma.before_colon}.pkg"

  uninstall pkgutil: [
                       'com.casio.fx.ScreenReceiver.ScreenReceiver',
                       'com.casio.fx.ScreenReceiver.fxASPIDriver',
                       'com.casio.fx.ScreenReceiver.fxSRManual',
                     ],
            delete:  '/Applications/CASIO/ScreenReceiver.app',
            rmdir:   '/Applications/CASIO'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.casio.fx.screenreceiver.sfl'

  caveats do
    reboot
  end
end
