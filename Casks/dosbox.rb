cask :v1 => 'dosbox' do
  version '0.74'
  sha256 '99057370b478608a6f0167ef522ef59e0e1b876f8565622d3dbd707925d61f6c'

  url "https://downloads.sourceforge.net/project/dosbox/dosbox/#{version}/DOSBox-#{version}-1_Universal.dmg"
  homepage 'http://www.dosbox.com'
  license :oss

  app 'DOSBox.app'
end
