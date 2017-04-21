cask 'standard-notes' do
  version '0.3.3'
  sha256 'b321e1792b015702d9c8b3c4ebba1bdc0fa5902cc618c83470d676eedf14a239'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: '28550074e3d62cf01ce1655c03016dfc69d43d64a1716f691bd66f7d8efd8b1f'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
