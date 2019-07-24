cask 'citra' do
  version :latest
  sha256 :no_check

  url "https://github.com/citra-emu/citra-web/releases/download/1.0/citra-setup-mac.dmg"
  name 'Citra'
  homepage 'https://citra-emu.org'

  installer manual: 'citra-setup-mac.app'
end
