cask 'leocad' do
  version '18.02'
  sha256 'b4522d1af5f2dac3cfd3ae0dc654ed4a5cb95fff2ea7d85ba3331cf9132fedfa'

  url 'https://github.com/leozide/leocad/releases/download/v18.02/LeoCAD-macOS-18.02.dmg'
  appcast 'https://github.com/leozide/leocad/releases.atom'
  name 'LeoCAD'
  homepage 'https://github.com/leozide/leocad'

  app 'LeoCAD.app'
end
