cask :v1 => 'pomotodo' do
  version :latest
  sha256 :no_check

  # hackplan.com is the official download host per the vendor homepage
  url 'http://air.hackplan.com/v1/p/com.pomotodo.PomotodoMac/download'
  name 'Pomodoro'
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          :sha256 => '6babb8c063ac36c7769d50564f143eafe510d6e07a3ed6ea4375f8433e27ae28'
  homepage 'https://pomotodo.com'
  license :gratis

  app 'Pomotodo.app'
end
