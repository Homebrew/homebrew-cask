cask 'copyq' do
  version '2.7.1'
  sha256 '39a95e01a127ab4fb0c40848b66486fd3f6c240cee7d744f72f3a73ee8c83603'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ-#{version}.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: 'd1a625ac78d4a299c72917288794d89784bd8c8ada53c15404df009ac4f02d28'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
end
