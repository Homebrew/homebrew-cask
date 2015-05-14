cask :v1 => 'consulo' do
  version '643'
  sha256 '7d616920545d31797462c9b0681455de6fd3c29006b14975bffeb8c0685c5cde'
  url 'http://must-be.org/vulcan/site/_consulo-distribution/out/consulo-mac-no-jre.tar.gz'
  name 'consulo'
  homepage 'https://github.com/consulo'
  license :oss

  app 'Consulo.app'
end
