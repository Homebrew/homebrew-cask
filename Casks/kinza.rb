cask 'kinza' do
  version '5.0.0'
  sha256 '73306617236d40d2318e5662359126bbf0e3f026c106c7a1ff45739e8e931250'

  # d7s9ygw7nxr46.cloudfront.net was verified as official when first introduced to the cask
  url "https://d7s9ygw7nxr46.cloudfront.net/mac/kinza_#{version}.dmg"
  appcast 'https://www.kinza.jp/en/download/thankyou/mac/'
  name 'Kinza'
  homepage 'https://www.kinza.jp/en/'

  app 'Kinza.app'
end
