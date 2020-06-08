cask 'framer' do
  version '49983,1590567228'
  sha256 'e0be9a0628ee1ff529a22337716360a2786c5012933f91c43b39dfb5ce819feb'

  url "https://dl.framer.com/com.framer.desktop/#{version.before_comma}/#{version.after_comma}/FramerDesktop-#{version.before_comma}.zip"
  appcast 'https://updates.framer.com/sparkle/com.framer.desktop'
  name 'Framer'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer.app'
end
