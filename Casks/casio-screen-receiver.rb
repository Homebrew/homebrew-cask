cask 'casio-screen-receiver' do
  version '3.02_b,4'
  sha256 '5eaff7fd7894d483534d82e7fbc6b77a6d304afa580e10b1c7bce38a3a69e07a'

  url "https://edu.casio.com/education/support_software/dl/screen_Receiver/screenrecv_inst_302b_#{version.after_comma}.zip" # 302b should be interpolated from the version
  name 'Casio Screen Receiver'
  homepage 'https://edu.casio.com/education/support_software/'

  pkg "ScreenReceiver_Ver.#{version.before_comma}.pkg"

  uninstall pkgutil: [
                       'com.casio.fx.ScreenReceiver.ScreenReceiver',
                       'com.casio.fx.ScreenReceiver.fxASPIDriver',
                       'com.casio.fx.ScreenReceiver.fxSRManual',
                     ],
            rmdir:   "#{appdir}/CASIO"

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.casio.fx.screenreceiver.sfl'

  caveats do
     reboot
  end
end
