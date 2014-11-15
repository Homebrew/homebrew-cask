cask :v1 => 'ntfsmounter' do
  version '0.4'
  sha256 'bfb8cfe17518513f8784f1a0389af8716b1ce319cc516cfc188de6226bbbbb4e'

  url "http://ntfsmounter.com/NTFS%20Mounter%20#{version}.dmg.zip"
  homepage 'http://ntfsmounter.com/'
  license :unknown

  container :nested => "NTFS Mounter #{version}.dmg"
  app 'ntfsMounter.app'
end
