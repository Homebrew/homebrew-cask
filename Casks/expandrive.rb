class Expandrive < Cask
  url 'http://updates.expandrive.com/apps/expandrive/download_latest'
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3'
  homepage 'http://www.expandrive.com/expandrive'
  version 'latest'
  sha256 :no_check
  link 'ExpanDrive.app'
end
