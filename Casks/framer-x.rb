cask 'framer-x' do
  version '24271,1539682151'
  sha256 'ae1ae101f6509908bfa0b7e5e4cb10ae7c6ba7a8d3f957cedf3c87d4cc157422'

  # dl.devmate.com/com.framer.x was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer X.app'
end
