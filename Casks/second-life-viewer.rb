cask :v1 => 'second-life-viewer' do
  version '3.6.13.284995'
  sha256 '8aa1bc39077452c3006390d4a888ca4113c087e8cdc78f5008dc85091015627d'

  url "http://download.cloud.secondlife.com/Viewer_3/Second_Life_#{version.gsub('.','_')}_i386.dmg"
  homepage 'http://secondlife.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Second Life Viewer.app'
end
