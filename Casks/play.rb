cask 'play' do
  version '2.0.13'
  sha256 'b1b8e99941d573b539c01b26264d13f209477106cb67009bd3e5cfe826f4bcc1'

  # github.com/pmsaue0/play was verified as official when first introduced to the cask
  url "https://github.com/pmsaue0/play/releases/download/v#{version}/play_#{version}.dmg.zip"
  appcast 'https://github.com/pmsaue0/play/releases.atom',
          checkpoint: '4b7c78b6ff2bdcd30a42400710317cfa5d349e34f15bfd0c1d36b58420f310eb'
  name 'Play'
  homepage 'https://pmsaue0.github.io/play/'

  app 'Play.app'

  zap trash: [
               '~/Library/Application Support/Play',
               '~/Library/Caches/Play',
             ]
end
