class Atmonitor < Cask
  version 'latest'
  sha256 :no_check  

  url 'http://download.atpurpose.com/atMonitor/atMonitor.zip'
  # todo: no response
  # appcast 'http://support.atPurpose.com/atMonitor/updates.xml'
  homepage 'http://www.atpurpose.com/atMonitor/'

  link 'atMonitor.app'
end
