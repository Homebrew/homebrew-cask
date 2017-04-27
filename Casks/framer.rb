cask 'framer' do
  version '8580,1493217501'
  sha256 '1f3e9c6ee3230b8342215c552ab1a578fab86cff2872e6e4288bb1f6772ad103'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.motif.framer/#{version.before_comma}/#{version.after_comma}/FramerStudio-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'cb259305a31e47f9a709f0ea9198ad2526491ee1675a1cba691a6dc29734c8bf'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end
