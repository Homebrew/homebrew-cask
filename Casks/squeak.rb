cask 'squeak' do
  version '5.2,18229'
  sha256 '78191157f46bbcd04f8c7d36190d5e0247a238eac01b26911badd5c622a3300f'

  url "https://files.squeak.org/#{version.before_comma}/Squeak#{version.before_comma}-#{version.after_comma}-64bit/Squeak#{version.before_comma}-#{version.after_comma}-64bit-All-in-One.zip"
  appcast 'https://squeak.org/downloads/'
  name 'Squeak'
  homepage 'https://squeak.org/'

  app "Squeak#{version.before_comma}-#{version.after_comma}-64bit-All-in-One.app"

  zap trash: "~/Library/Saved Application State/org.squeak.Squeak#{version.before_comma}.64.All-in-One.savedState"
end
