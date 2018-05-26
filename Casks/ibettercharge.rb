cask 'ibettercharge' do
  version '1.0.11,1526399595'
  sha256 '569052ef59312935d38ab48009bfdaf39b9d21e08316b2d5bd487d56bfb033b1'

  # devmate.com/com.softorino.iBetterCharge was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.iBetterCharge/#{version.before_comma}/#{version.after_comma}/iBetterCharge-#{version.before_comma}.zip"
  appcast 'http://updates.devmate.com/com.softorino.iBetterCharge.xml',
          checkpoint: '290a5dbaeea8256d23cfe74c0ad1414f4b8116df14ca198f4d735db0d5808e54'
  name 'iBetterCharge'
  homepage 'https://softorino.com/ibettercharge/'

  app 'iBetterCharge.app'
end
