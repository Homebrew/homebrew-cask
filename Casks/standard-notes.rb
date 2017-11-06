cask 'standard-notes' do
  version '2.0.3'
  sha256 'f16be6ee64ce1ccca09f1c923a7339aed5655c6ee9c4fb56c61f8511d76c8cdc'

  # github.com/standardnotes/desktop was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard-Notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: '97a6545e773c73ab9995f0f4b76d910dfe73f2bf3bb3c7ec483b65fa8e506f90'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  auto_updates true

  app 'Standard Notes.app'
end
