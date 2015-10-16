cask :v1 => 'fiji' do
  version :latest
  sha256 :no_check

  # imagej.net is the official download host per the vendor homepage
  url 'http://jenkins.imagej.net/job/Stable-Fiji-MacOSX/lastSuccessfulBuild/artifact/fiji-macosx.dmg'
  name 'Fiji'
  homepage 'http://fiji.sc'
  license :oss

  app 'Fiji.app'
end
