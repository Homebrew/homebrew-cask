cask 'framer-x' do
  version '34754,1567173519'
  sha256 '7f690b11e1f5b1806949875d38d1f0e7a94eb34278cf95040955a872c37e6ea4'

  # dl.devmate.com/com.framer.x was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  depends_on macos: '>= :high_sierra'

  app 'Framer X.app'
end
