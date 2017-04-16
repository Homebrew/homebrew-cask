class MozillaAddonSdk < Cask
  url 'http://ftp.mozilla.org/pub/mozilla.org/labs/jetpack/addon-sdk-1.16.zip'
  homepage 'https://developer.mozilla.org/en-US/Add-ons/SDK'
  version '1.16'
  sha256 '29d9378d6dfc9a12a50dbc286adb6561a6f60e62c506428d4765c0e0696c706f'
  caveats <<-EOS.undent
    To continue, follow this link: https://developer.mozilla.org/en-US/Add-ons/SDK/Tutorials/Installation
  EOS
end
