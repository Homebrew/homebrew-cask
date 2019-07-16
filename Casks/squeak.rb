cask 'squeak' do
  version '5.2-18228'
  sha256 '7bd3de9beedcce792db32f1253f9243a299909368bad6f1ac21dd128f11b289d'

  url "https://files.squeak.org/#{version.major_minor}/Squeak#{version}-64bit/Squeak#{version}-64bit-All-in-One.zip"
  name 'Squeak'
  homepage 'https://squeak.org/'

  app "Squeak#{version}-64bit-All-in-One.app"

  zap trash: "~/Library/Saved Application State/org.squeak.Squeak#{version.major_minor}.64.All-in-One.savedState"
end
