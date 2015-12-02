cask :v1 => 'freedome' do
  version :latest
  sha256 :no_check

  url 'https://download.sp.f-secure.com/freedome/installer/Freedome.dmg'
  name 'Freedome'
  name 'F-Secure Freedome'
  homepage 'https://www.f-secure.com/en_US/web/home_us/freedome'
  license :commercial

  app 'Freedome.app'
end
