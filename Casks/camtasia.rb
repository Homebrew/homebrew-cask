cask 'camtasia' do
  version '2019.0.5'
  sha256 '7391a263d0210944a2464911bbfc5a6f0814b76b7d3e3fcd56657d10df927d96'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "Camtasia #{version.major}.app"
end
