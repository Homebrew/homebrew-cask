cask 'overflow' do
  version '3.0.4'
  sha256 '77434b1beef3b77c950dcd8f1f8118c1f9bc4f479f8d12f085172fd0ac385eb7'

  # stunt.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://stunt.s3.amazonaws.com/overflow#{version}.zip"
  appcast "https://stuntsoftware.com/PHP/sparkle/overflow#{version.major}.php"
  name 'overflow'
  homepage 'https://stuntsoftware.com/overflow/'

  app "Overflow #{version.major}.app"

  zap trash: [
               "~/Library/Containers/com.stuntsoftware.Overflow3/Data/Library/Preferences/com.stuntsoftware.Overflow#{version.major}.plist",
               '~/Library/Containers/com.stuntsoftware.Overflow3/Data/Library/Application Support/default.realm',
             ]
end
