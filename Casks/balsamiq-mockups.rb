cask 'balsamiq-mockups' do
  version '3.5.5'
  sha256 'b08819effb63fa3361e2286d4e580bc67edf30c16962c34453e191ccbcfc482e'

  url "https://builds.balsamiq.com/mockups-desktop/Balsamiq_Mockups_#{version}.dmg"
  name 'Balsamiq Mockups'
  homepage 'https://balsamiq.com/'

  app "Balsamiq Mockups #{version.major}.app"

  zap delete: [
                # TODO: expand/glob for "~/Library/Caches/BalsamiqMockups#{version.major}.*",
                # TODO: expand/glob for "~/Library/Saved Application State/BalsamiqMockups#{version.major}.*",
              ],
      trash:  [
                "~/Library/Preferences/BalsamiqMockups#{version.major}",
                # TODO: expand/glob for "~/Library/Preferences/BalsamiqMockups#{version.major}.*",
              ]
end
