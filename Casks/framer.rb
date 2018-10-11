cask 'framer' do
  version '18201,1536243769'
  sha256 '55d4deb0a96865be5a23c182ca9e3abb0d1dd5ca745b309f23485c73dadb9761'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.motif.framer/#{version.before_comma}/#{version.after_comma}/FramerStudio-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.motif.framer.xml'
  name 'Framer'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer.app'
end
