cask 'framer' do
  version '18157,1524230415'
  sha256 'f86de1a53854f275b3dbd17a3e1e427d8873b934384f1acfd0cd860fbba76729'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.motif.framer/#{version.before_comma}/#{version.after_comma}/FramerStudio-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'e40a5144686c538a5028489b1d6582fb59a8d907711fe19c683c6ceb1e2e169b'
  name 'Framer'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer.app'
end
