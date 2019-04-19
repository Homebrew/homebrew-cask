cask 'framer-x' do
  version '29322,1553614664'
  sha256 'ac591eb5c6c93602941095a9dc0af8e6e442e4b9407f6cfbb5411b05f69816c0'

  # dl.devmate.com/com.framer.x was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer X.app'
end
