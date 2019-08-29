cask 'framer-x' do
  version '34743,1567006773'
  sha256 'cf9561453d39119dba9c5c90f35c7dc564ecf180c4986b14339591d58c1e0885'

  # dl.devmate.com/com.framer.x was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  depends_on macos: '>= :high_sierra'

  app 'Framer X.app'
end
