cask 'slimhud' do
  version '1.3.6'
  sha256 'ad70d3c32226f102fc8a82987b10bd3053445c45b28983be8d278e16bf30d913'

  url "https://github.com/AlexPerathoner/SlimHUD/releases/download/v#{version}/SlimHUD.zip"
  appcast 'https://github.com/AlexPerathoner/SlimHUD/releases.atom'
  name 'SlimHUD'
  homepage 'https://github.com/AlexPerathoner/SlimHUD/'

  depends_on macos: '>= :mojave'

  app 'SlimHUD.app'

  zap trash: '~/Library/Preferences/AlexP.SlimHUD.plist'
end
