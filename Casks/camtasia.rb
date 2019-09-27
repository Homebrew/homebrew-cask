cask 'camtasia' do
  version '2019.0.4'
  sha256 'f85a85f3c0b8b0c1ca7736c274cd80948d9b8981f91d77856d496f6a3a3f5838'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "Camtasia #{version.major}.app"
end
