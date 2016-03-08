cask 'charlessoft-timetracker' do
  version :latest
  sha256 :no_check

  url 'https://charlessoft.com/TimeTracker.zip'
  name 'TimeTracker'
  homepage 'https://charlessoft.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TimeTracker.app'
end
