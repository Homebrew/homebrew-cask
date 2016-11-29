cask 'canon-capt-printer-driver' do
  version '3.90'
  sha256 '75341c120a4cee3635780d875ee209afe6d175153596f36a176980870d6ca57e'

  # gdlp01.c-wss.com was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/7/0100004207/14/Mac_CAPT_V#{version.no_dots}_uk_EN.dmg"
  name 'Canon CAPT Printer Driver'
  homepage 'http://support-au.canon.com.au/contents/AU/EN/0100420705.html'

  pkg 'MacOSX/Canon_CAPT_Installer.pkg'

  uninstall launchctl: 'jp.co.canon.CUPSCAPT.BackGrounder',
            delete:    [
                         '/Library/Printers/Canon/CUPSCAPT',
                         '/Library/LaunchAgents/jp.co.canon.CUPSCAPT.BG.plist',
                         '/Library/Printers/PPDs/Contents/Resources/CNMCLBP*AUK.ppd.gz',
                       ]
end
