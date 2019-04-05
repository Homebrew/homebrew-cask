cask 'framer-x' do
  version '29021,1552566907'
  sha256 'e04fa0c0cb1a13ea7e5a6d985a420ea0774a550fcc6e98ebff1febd12fde4d76'

  # dl.devmate.com/com.framer.x was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer X.app'
end
