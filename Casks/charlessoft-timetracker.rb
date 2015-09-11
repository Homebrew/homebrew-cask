cask :v1 => 'charlessoft-timetracker' do
  version :latest
  sha256 :no_check

  url 'https://charlessoft.com/TimeTracker.zip'
  name 'TimeTracker'
  homepage 'https://charlessoft.com/'
  license :unknown

  app 'TimeTracker.app'
end
