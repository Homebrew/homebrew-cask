cask :v1 => 'simulator-folders' do
  version :latest
  sha256 :no_check

  url 'http://www.gettracktime.com/dbrd/download.php?id=8'
  appcast 'http://www.gettracktime.com/dbrd/appcast.php?id=8'
  homepage 'http://nimbleworks.co.uk/blog/simulator-folders/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Simulator Folders.app'
end
