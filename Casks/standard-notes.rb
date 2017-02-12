cask 'standard-notes' do
  version '0.2.2'
  sha256 '02c04b39f3842cf1b26d3c36ed050a163331f1e3e0d3d6f052e45b8536768697'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: '619c2ba7710efe2fa43af66e31d2ed12d755c8711766608876bd92be3faa2d64'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
