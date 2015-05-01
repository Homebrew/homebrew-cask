cask :v1 => 'stella' do
  version '3.9.3'
  sha256 '83870088368be20224ed51f52e9babe53a75575495279adc596203f123e8477c'

  url "http://downloads.sourceforge.net/project/stella/stella/#{version}/Stella-#{version}_intel-macosx.dmg"
  name 'Stella'
  homepage 'http://stella.sourceforge.net'
  license :gpl

  app 'Stella.app'
end
