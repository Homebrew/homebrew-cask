cask 'mounty' do
  version :latest
  sha256 :no_check

  url 'http://mounty.app/releases/Mounty.dmg'
  name 'Mounty for NTFS'
  homepage 'http://mounty.app/'

  app 'Mounty.app'
end
