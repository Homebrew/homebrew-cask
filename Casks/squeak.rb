cask 'squeak' do
  version '5.1-16549'
  sha256 '42cfa72371a86e95c18dda29c2cbd41d48c71285e01a8e2e7e88e2d09e2962a2'

  url "http://files.squeak.org/#{version.major_minor}/Squeak#{version}-32bit/Squeak#{version}-32bit-All-in-One.zip"
  name 'Squeak'
  homepage 'http://squeak.org/'

  app "Squeak#{version}-32bit-All-in-One.app"

  zap trash: "~/Library/Saved Application State/org.squeak.Squeak#{version.major_minor}.32.All-in-One.savedState"
end
