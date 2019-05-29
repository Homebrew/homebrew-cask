cask 'framer' do
  version '18203,1539331096'
  sha256 '3e8a2d275d5da0ad8601228b2241d26a383d3d31cf540c6a437c16fa3d7b2b49'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.motif.framer/#{version.before_comma}/#{version.after_comma}/FramerStudio-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.motif.framer.xml'
  name 'Framer'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer.app'
end
