cask 'camtasia' do
  version '2019.0.1'
  sha256 '4ac81733639e962ef72ea160d6bdbc0f5cedd3a2fb1d74ce909f0504032c15c2'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "Camtasia #{version.major}.app"
end
