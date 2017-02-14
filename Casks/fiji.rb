cask 'fiji' do
  version :latest
  sha256 :no_check

  # jenkins.imagej.net/job/Stable-Fiji-MacOSX was verified as official when first introduced to the cask
  url 'https://jenkins.imagej.net/job/Stable-Fiji-MacOSX/lastSuccessfulBuild/artifact/fiji-macosx.dmg'
  name 'Fiji'
  homepage 'https://fiji.sc/'

  app 'Fiji.app'
end
