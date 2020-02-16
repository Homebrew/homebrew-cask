cask 'balsamiq-wireframes' do
  version '4.0.19'
  sha256 '04f850df8dad70927589dadc56385c07a4aa49b4fca7f5ed8c6bfc210bde4899'

  # build_archives.s3.amazonaws.com/wireframes-desktop was verified as official when first introduced to the cask
  url "https://build_archives.s3.amazonaws.com/wireframes-desktop/mac/Balsamiq%20Wireframes%20#{version}.dmg"
  appcast 'https://builds.balsamiq.com/bwd/mac.jsonp'
  name 'Balsamiq Wireframes'
  homepage 'https://balsamiq.com/'

  app 'Balsamiq Wireframes.app'

  zap trash: [
               "~/Library/Caches/BalsamiqMockups#{version.major}.*",
               "~/Library/Preferences/BalsamiqMockups#{version.major}",
               "~/Library/Preferences/BalsamiqMockups#{version.major}.*",
               "~/Library/Saved Application State/BalsamiqMockups#{version.major}.*",
             ]
end
