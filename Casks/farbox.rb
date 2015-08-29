cask :v1 => 'farbox' do
  version '0.5.3.6'
  sha256 '8884a7cc281467565dff6b698bc168288a04510d51c4f6e8717f0db784dafb2b'

  url 'http://www.farbox.com/download/farbox_editor?fb_file_hash=editor/farbox_0.5.3.6.dmg'
  name 'farbox'
  homepage 'https://www.farbox.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'farbox.app'
end
