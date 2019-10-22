cask 'mounty' do
  version :latest
  sha256 :no_check

  url 'https://mounty.app/releases/Mounty.dmg'
  name 'Mounty for NTFS'
  homepage 'https://mounty.app/'

  app 'Mounty.app'
end
