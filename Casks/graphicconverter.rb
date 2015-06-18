cask :v1 => 'graphicconverter' do
  version '9_build1780'
  sha256 '034918633b8cac8dd2cbc0613c8ff5be29e6f5dbba909b46d29d61ee0ba1d943'

  # lemkesoft.org is the official download host per the vendor homepage
  url "http://www.lemkesoft.org/files/graphicconverter/gc#{version}.dmg"
  name 'GraphicConverter'
  homepage 'http://www.lemkesoft.de/en/products/graphicconverter/'
  license :commercial

  app "GraphicConverter #{version.to_i}.app"
end
