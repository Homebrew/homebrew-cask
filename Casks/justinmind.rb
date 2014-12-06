cask :v1 => 'justinmind' do
  version :latest
  sha256 :no_check

  url 'http://d2ld3he4yll0xl.cloudfront.net/Justinmind_Prototyper_MacOS.dmg'
  homepage 'http://www.justinmind.com/'
  license :unknown

  pkg 'Justinmind.pkg'

  uninstall :pkgutil => 'com.justinmind.justinmindprototyper631.pkg'
end
