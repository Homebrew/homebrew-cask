cask 'framer-x' do
  version '35252,1568817419'
  sha256 '12f901af1140fbd6051470788aa6c21fa894d658da1e63dab9e0d0fb5bb7b72c'

  # dl.devmate.com/com.framer.x was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  depends_on macos: '>= :high_sierra'

  app 'Framer X.app'
end
