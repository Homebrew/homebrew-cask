cask 'farbox' do
  version '0.5.3.6'
  sha256 '8884a7cc281467565dff6b698bc168288a04510d51c4f6e8717f0db784dafb2b'

  url "https://www.farbox.com/download/farbox_editor?fb_file_hash=editor/farbox_#{version}.dmg"
  name 'farbox'
  homepage 'https://www.farbox.com/'
  license :gratis

  app 'farbox.app'
end
