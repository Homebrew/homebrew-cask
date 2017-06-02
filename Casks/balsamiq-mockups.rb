cask 'balsamiq-mockups' do
  version '3.5.9'
  sha256 '13abbe8f62973ec455bf3706e7deb1e833b4073d71f4cf58b8f0574447b2056b'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  appcast 'https://builds.balsamiq.com/mockups-desktop/version.jsonp',
          checkpoint: 'ca9cca286e7d59af89cf5dd70cd4431e45ecfd24fa6347dba14f2263c20871d3'
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'

  app "Balsamiq Mockups #{version.major}.app"

  zap delete: [
                "~/Library/Caches/BalsamiqMockups#{version.major}.*",
                "~/Library/Saved Application State/BalsamiqMockups#{version.major}.*",
              ],
      trash:  [
                "~/Library/Preferences/BalsamiqMockups#{version.major}",
                "~/Library/Preferences/BalsamiqMockups#{version.major}.*",
              ]
end
