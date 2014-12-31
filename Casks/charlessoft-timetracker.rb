cask :v1 => 'charlessoft-timetracker' do
  version :latest
  sha256 :no_check

  url 'http://charlessoft.com/TimeTracker.zip'
  name 'TimeTracker'
  homepage 'http://charlessoft.com/'
  license :unknown

  app 'TimeTracker.app'
end
