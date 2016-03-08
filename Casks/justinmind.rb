cask 'justinmind' do
  version :latest
  sha256 :no_check

  # cloudfront.net is the official download host per the vendor homepage
  url 'https://d2ld3he4yll0xl.cloudfront.net/Justinmind_Prototyper_MacOS.dmg'
  name 'Justinmind Prototyper'
  homepage 'http://www.justinmind.com/'
  license :commercial

  pkg 'Justinmind.pkg'

  uninstall pkgutil: 'com.justinmind.justinmindprototyper631.pkg'
end
