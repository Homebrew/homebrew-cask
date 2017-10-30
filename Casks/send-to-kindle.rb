cask 'send-to-kindle' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/sendtokindle was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/sendtokindle/SendToKindleForMac-installer.pkg'
  name 'Send to Kindle'
  homepage 'https://www.amazon.com/gp/sendtokindle/mac'

  pkg 'SendToKindleForMac-installer.pkg', allow_untrusted: true

  uninstall pkgutil: '/Applications/Send to Kindle/Uninstall Send to Kindle.app/Contents/MacOS/SendToKindleUninstaller'
end
