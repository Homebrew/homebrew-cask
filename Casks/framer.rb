cask 'framer' do
  version '51702,1595428792'
  sha256 '6df18d3d1597d2ac18a2a805f9c5de7fe7996f86e26328825d833d688476c32c'

  url "https://dl.framer.com/com.framer.desktop/#{version.before_comma}/#{version.after_comma}/FramerDesktop-#{version.before_comma}.zip"
  appcast 'https://updates.framer.com/sparkle/com.framer.desktop'
  name 'Framer'
  homepage 'https://www.framer.com/desktop/'

  depends_on macos: '>= :mojave'

  app 'Framer.app'
end
