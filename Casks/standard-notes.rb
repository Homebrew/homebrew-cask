cask 'standard-notes' do
  version '0.3.4'
  sha256 'e2d9e3d1e9fc9f508b6dffe61218350ef2916cb4ff7a9fa8636b6739a3739656'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: 'c5a7d3a4cea9667e8cdd9c0b8eb9564950ea58daa1281cdfd090f102ccc66064'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
