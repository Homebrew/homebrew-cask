cask 'camtasia' do
  version '2020.0.4'
  sha256 '1484cd3e0b92eef8f8013902e68d1fb0f9c22273a7e37a6aeae3934c085d369f'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app "Camtasia #{version.major}.app"
end
