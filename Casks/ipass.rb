cask 'ipass' do
  version :latest
  sha256 :no_check

  # d18uyicgt51j26.cloudfront.net/packages was verified as official when first introduced to the cask
  url 'https://d18uyicgt51j26.cloudfront.net/packages/iPass_Mac.dmg'
  name 'iPass'
  homepage 'https://www.ipass.com/'

  auto_updates true

  pkg 'iPass.pkg'

  uninstall pkgutil: 'com.ipass.ipass.pkg'
end
