cask 'qtmips_gui' do
  version '0.7.3'
  sha256 'da1254860245e7c4904531d4dc4d5bdb05e805975168d6a47ade8a44d6f69379'

  url "https://github.com/cvut/QtMips/releases/download/v#{version}/qtmips-macos-v#{version}.zip"
  appcast 'https://github.com/cvut/QtMips/releases.atom'
  name 'QtMips - MIPS CPU emulator gui'
  homepage 'https://github.com/cvut/QtMips'

  app 'qtmips_gui.app'
end
