cask 'camtasia' do
  version '2020.0.3'
  sha256 '3078fb2b5a865296432c58b84981c6eeaf630c2c1b52b2195b43424a8f33a569'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app "Camtasia #{version.major}.app"
end
