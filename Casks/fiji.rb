cask 'fiji' do
  version :latest
  sha256 :no_check

  # jenkins.imagej.net/job/Stable-Fiji-MacOSX was verified as official when first introduced to the cask
  url 'http://jenkins.imagej.net/job/Stable-Fiji-MacOSX/lastSuccessfulBuild/artifact/fiji-macosx.dmg'
  name 'Fiji'
  homepage 'http://fiji.sc'
  license :oss

  app 'Fiji.app'
end
