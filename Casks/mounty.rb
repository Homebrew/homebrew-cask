cask 'mounty' do
  version :latest
  sha256 :no_check

  url 'http://enjoygineering.com/mounty/releases/Mounty.dmg'
  name 'Mounty for NTFS'
  homepage 'http://www.enjoygineering.com/mounty/'

  app 'Mounty.app'
end
