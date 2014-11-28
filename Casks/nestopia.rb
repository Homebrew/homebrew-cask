cask :v1 => 'nestopia' do
  version :latest
  sha256 :no_check

  url 'http://www.bannister.org/cgi-bin/download.cgi?nestopia'
  homepage 'http://www.bannister.org/software/nestopia.htm'
  license :closed

  app 'Nestopia.app'
end
