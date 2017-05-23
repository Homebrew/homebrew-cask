cask 'standard-notes' do
  version '1.0.0'
  sha256 '323a3f7b542f01a7a11abd27a1dc6be6358a54e5472412cc5b7b401f8e13350c'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: '4df4aae5a8688eef1225879017d83ba391f43743f6bfca245373b9315b464d35'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
