cask 'framer-x' do
  version '34762,1567605235'
  sha256 'f2777872816d6fef5522b8d41bdd3b10350c1a1b4f24ef4c30360777899ca320'

  # dl.devmate.com/com.framer.x was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  depends_on macos: '>= :high_sierra'

  app 'Framer X.app'
end
