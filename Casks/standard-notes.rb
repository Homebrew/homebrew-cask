cask 'standard-notes' do
  version '0.2.4'
  sha256 '906885b96583c134ef76c388aa8913e0a1d84c10dbd16312279342097548cbd6'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: 'dfb068db85f61be7436290aa21c449b04275b0b58bccb5f0a2f95edcf000aa68'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
