cask 'duet' do
  version '1.5.1.1'
  sha256 'dc3e7adc8b07f1d921944403b0356815b9df84bd8de9524fd3e7d63878a14496'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-us-west-1.amazonaws.com/duetmac/#{version.dots_to_underscores}/duet_#{version.dots_to_underscores}.zip"
  appcast "https://s3-us-west-1.amazonaws.com/duetmac/#{version.dots_to_underscores}/DuetDisplayAppcast.xml",
          :sha256 => '8e020dd515c9693fe4eda510d5330e1bc873caa8d2b562a4197afe14b5ef7ed3'
  name 'Duet'
  homepage 'http://www.duetdisplay.com/'
  license :gratis

  app 'duet.app'

  uninstall :kext => 'com.karios.driver.DuetDisplay'
end
