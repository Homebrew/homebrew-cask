cask 'ntfsmounter' do
  version '0.4'
  sha256 'bfb8cfe17518513f8784f1a0389af8716b1ce319cc516cfc188de6226bbbbb4e'

  url "http://ntfsmounter.com/NTFS%20Mounter%20#{version}.dmg.zip"
  appcast 'http://ntfsmounter.com/',
          checkpoint: '617ad7431d12c751f518533b8c7b7f8b56decd2513d7f3ee49f2fa07f45739bc'
  name 'NTFS Mounter'
  homepage 'http://ntfsmounter.com/'

  app 'ntfsMounter.app'
end
