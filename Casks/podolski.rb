cask 'podolski' do
  version '1.2.1,3898'
  sha256 '2fb8736267a01aca6e65cdc855d8159a21ab25dcc2f81290a5e2f413b5062fe8'

  # uhedownloads-heckmannaudiogmb.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://uhedownloads-heckmannaudiogmb.netdna-ssl.com/releases/Podolski_#{version.before_comma.dots_to_underscores}_Mac.zip"
  name 'Podolski'
  homepage 'https://u-he.com/products/podolski/'

  pkg "Podolski#{version.after_comma}Mac/Podolski #{version.before_comma}.#{version.after_comma} Installer.pkg"

  uninstall pkgutil: [
                       'com.u-he.Podolski.aax.pkg',
                       'com.u-he.Podolski.au.pkg',
                       'com.u-he.Podolski.data.pkg',
                       'com.u-he.Podolski.documentation.pkg',
                       'com.u-he.Podolski.presets.pkg',
                       'com.u-he.Podolski.vst.pkg',
                     ]

  caveats do
    reboot
  end
end
