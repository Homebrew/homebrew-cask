cask 'softube-central' do
  version '1.1.9'
  sha256 'd66d429ede5361d452938a565273135751a4d7c22730f94b912cd193fa7d4afd'

  # softubestorage.b-cdn.net was verified as official when first introduced to the cask
  url "https://softubestorage.b-cdn.net/softubecentral/Softube%20Central-#{version}.pkg"
  name 'Softube Central'
  homepage 'https://www.softube.com/softube-central/'

  depends_on cask: 'ilok-license-manager'

  pkg "Softube Central-#{version}.pkg"

  uninstall quit:    [
                       'org.softube.com.softubecentral',
                       'com.softube.Console1OSD_Release',
                     ],
            pkgutil: [
                       # There's definitely more than these - if you read this, and own other of
                       # their VSTs, after installing, try running
                       # `"$(brew --repository)/Library/Taps/homebrew/homebrew-cask/developer/bin/list_recent_pkg_ids"`
                       # and add any Softube pkg-IDs to this list
                       'com.softube.pkg.PlugIns_Console_1',
                       'com.softube.pkg.PlugIns_Console_1_Fader',
                       'com.softube.pkg.PlugIns_Console_1_British_Class_A',

                       'com.softube.installerdaemon.helper',
                       'org.softube.com.softubecentral',
                     ]

  zap trash: [
               '~/Library/Application Support/Softube',
               '/Library/Application Support/Softube',
               '~/Library/Application Support/softubecentral',
             ]
end
