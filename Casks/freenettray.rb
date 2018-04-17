cask 'freenettray' do
  version '2.2.0'
  sha256 '1351ee80def91f0fd7bb0903921d1987070e38787eacdb0ae8801b8f52bf0dac'

  # github.com/freenet/mactray was verified as official when first introduced to the cask
  url "https://github.com/freenet/mactray/releases/download/v#{version}/FreenetTray_#{version}.zip"
  appcast 'https://github.com/freenet/mactray/releases.atom',
          checkpoint: '20c4293885850440d8e87ca055a2dcc5bb7ae8bc01869efd1e7611e55edcdfc9'
  name 'Freenet'
  homepage 'https://freenetproject.org/'

  app 'FreenetTray.app'
end
