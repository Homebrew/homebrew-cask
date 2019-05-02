cask 'camtasia' do
  version '2019.0.0'
  sha256 '062d5f0c75a6627ea8b284d972dcb1887ca365707ed7a7af0e028a9a7bd57b94'

  url 'https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg'
  appcast 'https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "Camtasia #{version.major}.app"
end
