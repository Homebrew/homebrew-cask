cask 'freedome' do
  version :latest
  sha256 :no_check

  url 'https://download.sp.f-secure.com/freedome/installer/Freedome.dmg'
  name 'F-Secure Freedome'
  homepage 'https://www.f-secure.com/en_US/web/home_us/freedome'
  license :commercial

  app 'Freedome.app'
end
