cask :v1 => 'gn-growler-utility' do
  version '3.1'
  sha256 '5de013f7447e4c7f712951035994e759b9168525ee52b1f2e77f04b664bbf1b4'

  url "http://wafflesoftware.net/growlergn/download/GNGrowler-#{version.gsub('.','')}.zip"
  homepage 'http://wafflesoftware.net/growlergn/'
  license :unknown

  app 'GN Growler Utility.app'
end
