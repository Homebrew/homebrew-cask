cask :v1 => 'graphicconverter' do
  version '9.4'
  sha256 'bd3d837e4c3366131fa4c87ad186995ac40c48157c21df1c31aa94a4a57ee06c'

  url "http://www.lemkesoft.org/files/graphicconverter/gc#{version.to_i}_build1727.dmg"
  homepage 'http://www.lemkesoft.de/en/products/graphicconverter/'
  license :commercial

  app "GraphicConverter #{version.to_i}.app"
end
