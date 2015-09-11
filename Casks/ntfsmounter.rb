cask :v1 => 'ntfsmounter' do
  version '0.4'
  sha256 'bfb8cfe17518513f8784f1a0389af8716b1ce319cc516cfc188de6226bbbbb4e'

  url "http://ntfsmounter.com/NTFS%20Mounter%20#{version}.dmg.zip"
  name 'NTFS Mounter'
  homepage 'http://ntfsmounter.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :nested => "NTFS Mounter #{version}.dmg"
  app 'ntfsMounter.app'
end
