class Fiji < Cask
  url 'http://jenkins.imagej.net/job/Stable-Fiji-MacOSX/lastSuccessfulBuild/artifact/fiji-macosx.dmg'
  homepage 'http://fiji.sc'
  version 'latest'
  no_checksum
  link 'Fiji.app'
end
