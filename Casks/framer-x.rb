cask 'framer-x' do
  version '36830,1576846115'
  sha256 'c6282262f56672a7d42fe99b02510fddede54a25cb1095e6a36d8e6fba2fcd82'

  # dl.devmate.com/com.framer.x was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Framer X.app'
end
