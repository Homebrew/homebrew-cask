cask 'framer-x' do
  version '27726,1549020479'
  sha256 '52a609b68f9ccb0580f36bf43f38268f575e7a89084cf258ba905bf5ea9c7049'

  # dl.devmate.com/com.framer.x was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer X.app'
end
