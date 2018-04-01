cask 'ntfsmounter' do
  version '0.4'
  sha256 'bfb8cfe17518513f8784f1a0389af8716b1ce319cc516cfc188de6226bbbbb4e'

  url "http://ntfsmounter.com/NTFS%20Mounter%20#{version}.dmg.zip"
  appcast 'http://ntfsmounter.com/',
          checkpoint: '9a6e520a3ffbdd348ba8d9c832666b2ffce42f5c35b940bbbf90b55ed445413c'
  name 'NTFS Mounter'
  homepage 'http://ntfsmounter.com/'

  app 'ntfsMounter.app'
end
