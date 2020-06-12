cask 'camtasia' do
  version '2020.0.4'
  sha256 '19b68b56650a2b5f1dc6359c3dba464216c9a2a7588fa9efe3f1a1b9daf834df'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app "Camtasia #{version.major}.app"
end
