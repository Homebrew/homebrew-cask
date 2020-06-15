cask 'framer' do
  version '50437,1591893511'
  sha256 '1c6ea657ff534cbef79befa03b756309b34e229c0ce49790042e2850671aa00b'

  url "https://dl.framer.com/com.framer.desktop/#{version.before_comma}/#{version.after_comma}/FramerDesktop-#{version.before_comma}.zip"
  appcast 'https://updates.framer.com/sparkle/com.framer.desktop'
  name 'Framer'
  homepage 'https://www.framer.com/desktop/'

  depends_on macos: '>= :mojave'

  app 'Framer.app'
end
