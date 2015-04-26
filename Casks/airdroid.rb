cask :v1 => 'airdroid' do
  version '3.1.0'
  sha256 '32272e2b938453ccadd3130895689f6d527128ddc716d95df5741d334e88ff59'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'http://airdroid.com'
  license :closed

  app 'AirDroid.app'
end
