cask 'framer-x' do
  version '36826,1576240508'
  sha256 '1d7cf76424dccef88cfc16a8803e70d49cf44ae9a7844e0a86fa5326f7bd9ff9'

  # dl.devmate.com/com.framer.x was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Framer X.app'
end
