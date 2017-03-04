cask 'id3-editor' do
  version '1.23.34'
  sha256 '044fc5f752979672c41bdfd780612057fe25e093eab99f18a97c692b57f62bb5'

  url "http://www.pa-software.com/release/ID3Editor.ub.#{version}.dmg"
  name 'ID3 Editor'
  homepage 'http://www.pa-software.com/id3editor/'

  app 'ID3 Editor.app'
end
