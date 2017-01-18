cask 'big-mean-folder-machine' do
  version '2.35'
  sha256 '64ca7971a5e003ae992cdef66361a8da832a8bcd007320cc0d0a0a4ce18fe1eb'

  url 'http://www.publicspace.net/download/BMFM.dmg'
  appcast "http://www.publicspace.net/app/bmfm#{version.major}.xml",
          checkpoint: 'efccbe67240eb6c1c6d3911acd4828411048860dc7e900af0d7203a53d0e2573'
  name 'Big Mean Folder Machine'
  homepage 'http://www.publicspace.net/BigMeanFolderMachine/'

  app "Big Mean Folder Machine #{version.major}.app"
end
