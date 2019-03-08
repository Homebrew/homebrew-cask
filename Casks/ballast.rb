cask 'ballast' do
  version '1.2.0'
  sha256 '6976fb45da9648d4571e2cfefa6991acf53b85c4b3767887208130226c38d82c'

  # github.com/jamsinclair/ballast was verified as official when first introduced to the cask
  url "https://github.com/jamsinclair/ballast/releases/download/v#{version}/ballast-v#{version}.zip"
  appcast 'https://github.com/jamsinclair/ballast/releases.atom'
  name 'ballast'
  homepage 'https://jamsinclair.nz/ballast'

  depends_on macos: '>= :sierra'

  app 'ballast.app'

  uninstall quit:      'nz.jamsinclair.ballast',
            launchctl: 'nz.jamsinclair.ballast-LaunchAtLoginHelper'

  zap trash: [
               '~/Library/Preferences/nz.jamsinclair.ballast.plist',
               '~/Library/Application Scripts/nz.jamsinclair.ballast',
               '~/Library/Application Scripts/nz.jamsinclair.ballast-LaunchAtLoginHelper',
               '~/Library/Containers/nz.jamsinclair.ballast',
               '~/Library/Containers/nz.jamsinclair.ballast-LaunchAtLoginHelper',
             ]
end
