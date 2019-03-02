cask 'framer-x' do
  version '28904,1551352889'
  sha256 'bcba707f1b3839c5f3c19291abf7abb892165ce58036d9c0d6ce1dfd08d1a64c'

  # dl.devmate.com/com.framer.x was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer X.app'
end
