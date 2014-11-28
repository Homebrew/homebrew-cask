cask :v1 => 'stella' do
  version '3.9.3'
  sha256 '83870088368be20224ed51f52e9babe53a75575495279adc596203f123e8477c'

  url "https://downloads.sourceforge.net/project/stella/stella/#{version}/Stella-#{version}_intel-macosx.dmg"
  homepage 'http://stella.sourceforge.net'
  license :oss

  app 'Stella.app'
end
