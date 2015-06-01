cask :v1 => 'macnewbie-reborn' do
  version '0.9.16a'
  sha256 :no_check

  url 'Download MacNewbie 0.9.16a from Dropbox'
  name 'MacNewbie Reborn for Dwarf Fortress'
  homepage 'http://www.bay12forums.com/smf/index.php?topic=128960'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Macnewbie/MacNewbie Launcher.app'
end
