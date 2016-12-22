cask 'squeak' do
  version '5.1-16548'
  sha256 'c78258c6cc0cb9e3a433230518b065fcf10b5710da7821ef335cf7d8b2fe2f8a'

  url "http://files.squeak.org/#{version.major_minor}/Squeak#{version}-32bit/Squeak#{version}-32bit-All-in-One.zip"
  name 'Squeak'
  homepage 'http://squeak.org/'

  app "Squeak#{version}-32bit-All-in-One/Squeak#{version}-32bit-All-in-One.app"

  zap delete: '~/Library/Saved Application State/org.squeak.Squeak#{version.major_minor}.32.All-in-One.savedState'
end
