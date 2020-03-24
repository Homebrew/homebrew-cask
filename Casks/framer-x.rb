cask 'framer-x' do
  version '36850,1581607967'
  sha256 'cb038c9bc30b146af209bec51b1e443b937c2639da8572770e15185c275cf63c'

  url "https://dl.framer.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.framer.com/sparkle/com.framer.x'
  name 'Framer X'
  homepage 'https://framer.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Framer X.app'
end
