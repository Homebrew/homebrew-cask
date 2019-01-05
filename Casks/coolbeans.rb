cask 'coolbeans' do
  version '2018.12'
  sha256 '68df6bc7ff63598664e3526492aaf0489ba6a0b0ccf7ac99f726763dd6d1f564'

  url "https://paris.download.coolbeans.xyz/download/CoolBeans-#{version}.dmg"
  appcast 'https://coolbeans.xyz/download-macos.html'
  name 'CoolBeans'
  homepage 'https://coolbeans.xyz/'

  app "CoolBeans #{version}.app"
end
