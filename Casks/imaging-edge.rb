cask 'imaging-edge' do
  version '2.0.1_1910a,BlN9wc3nG4'
  sha256 '983afe3863bc2307c693bb335b05bd3794eb59736435f5fcbf9d236329e58efa'

  # ids.update.sony.net/IDC was verified as official when first introduced to the cask
  url "http://ids.update.sony.net/IDC/#{version.after_comma}/IE#{version.before_comma.no_dots}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.d-imaging.sony.co.jp/disoft_DL/imagingedge_DL/mac?fm=en',
          configuration: version.after_comma
  name 'Sony Imaging Edge'
  homepage 'https://support.d-imaging.sony.co.jp/app/imagingedge/'

  pkg 'IE_INST.pkg'

  uninstall pkgutil: 'com.sony.ImagingEdgeVer.1.pkg',
            delete:  '/Applications/Imaging Edge'

  zap trash: [
               '~/Library/Caches/com.sony.Viewer',
               '~/Library/Preferences/com.sony.Edit.plist',
               '~/Library/Preferences/com.sony.Remote.plist',
               '~/Library/Preferences/com.sony.Viewer.plist',
               '~/Library/Saved Application State/com.sony.Viewer.savedState',
             ]
end
