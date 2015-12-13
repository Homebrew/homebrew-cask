cask :v1 => 'feeder' do
  version '3.1.3'
  sha256 '39205ffc12e40e447d7cabc758d3a1872fdb066aab5a13b0d21f7c4ab54c1c9c'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          :sha256 => '02f785d157d509a1c10911b3e108ed41fbb8590ad2d51b4039e070bf6f1a2081'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
