cask 'ipass-open-mobile' do
  version '2.3.1.183'
  sha256 '5f46d35dd729ed543b6b69b7384d61e0108adc657073460e78c37eda74175c7e'

  url "https://www.ipass.com/misc/sw_downloads/Open-Mobile-Mac-V#{version}.dmg"
  name 'iPass Open Mobile'
  homepage 'https://ipass.com/'

  pkg 'iPassOpenMobile.pkg'

  uninstall quit:    'com.iPass.iPass-Open-Mobile',
            pkgutil: 'com.ipass.ipassOpenMobile.pkg'
end
