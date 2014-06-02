class DiskDrill < Cask
  url 'http://dl.cleverfiles.com/diskdrill.dmg'
  appcast 'http://www.cleverfiles.com/releases/auto-update/dd2-newestr.xml'
  homepage 'http://www.cleverfiles.com/'
  version 'latest'
  sha256 :no_check
  link 'Disk Drill.app'
end
