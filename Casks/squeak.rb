cask 'squeak' do
  version '5.2-18225'
  sha256 '377d9c1354fbf20485f82acd3771c46c3f7235285ba8d231beaff9c81f03a539'

  url "http://files.squeak.org/#{version.major_minor}/Squeak#{version}-64bit/Squeak#{version}-64bit-All-in-One.zip"
  name 'Squeak'
  homepage 'https://squeak.org/'

  app "Squeak#{version}-64bit-All-in-One.app"

  zap trash: "~/Library/Saved Application State/org.squeak.Squeak#{version.major_minor}.64.All-in-One.savedState"
end
