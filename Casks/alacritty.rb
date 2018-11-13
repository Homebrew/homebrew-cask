cask 'alacritty' do
  version '0.2.2'
  sha256 '832b2f8e0e79f9ef159415435bf21b5db837b9febe849332039db2367519a534'

  url 'https://github.com/jwilm/alacritty/releases/download/binaries/Alacritty.dmg'
  appcast 'https://github.com/jwilm/alacritty/releases.atom'
  name 'Alacritty'
  homepage 'https://github.com/jwilm/alacritty/'

  auto_updates true

  app 'Alacritty.app'
  binary "#{appdir}/Alacritty.app/Contents/MacOS/alacritty"
end
