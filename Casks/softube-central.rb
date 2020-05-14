cask 'softube-central' do
  version '1.1.9'
  sha256 'd66d429ede5361d452938a565273135751a4d7c22730f94b912cd193fa7d4afd'

  # softubestorage.b-cdn.net/ was verified as official when first introduced to the cask
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
                       'com.softube.pkg.*',
                       'com.softube.installerdaemon.helper',
                       'org.softube.com.softubecentral',
                     ]

  zap trash: [
               '/Library/Application Support/Softube',
               '~/Library/Application Support/Softube',
               '~/Library/Application Support/softubecentral',
             ]
end
