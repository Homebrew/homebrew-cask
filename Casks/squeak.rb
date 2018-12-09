cask 'squeak' do
  version '5.2-18225'
  sha256 'ade03315db7c9ed229c9b8b0b0daf68f16dbaee95817db09bbdc1cdb4df2643f'

  url "https://files.squeak.org/#{version.major_minor}/Squeak#{version}-64bit/Squeak#{version}-64bit-All-in-One.zip"
  name 'Squeak'
  homepage 'https://squeak.org/'

  app "Squeak#{version}-64bit-All-in-One.app"

  zap trash: "~/Library/Saved Application State/org.squeak.Squeak#{version.major_minor}.64.All-in-One.savedState"
end
