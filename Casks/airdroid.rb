cask :v1 => 'airdroid' do
  version '3.0.0'
  sha256 '85e21a3d111a0e0f151091b1bd920b38135c32152ec09a5a15f9572ee16bb1be'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  homepage 'airdroid.com'
  license :closed

  app 'AirDroid.app'
end
