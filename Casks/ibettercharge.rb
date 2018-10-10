cask 'ibettercharge' do
  version '1.0.11,1526399595'
  sha256 '569052ef59312935d38ab48009bfdaf39b9d21e08316b2d5bd487d56bfb033b1'

  # devmate.com/com.softorino.iBetterCharge was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.iBetterCharge/#{version.before_comma}/#{version.after_comma}/iBetterCharge-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.softorino.iBetterCharge.xml'
  name 'iBetterCharge'
  homepage 'https://softorino.com/ibettercharge/'

  app 'iBetterCharge.app'
end
