cask :v1 => 'graphicconverter' do
  version '9_build1780'
  sha256 '034918633b8cac8dd2cbc0613c8ff5be29e6f5dbba909b46d29d61ee0ba1d943'

  # lemkesoft.org is the official download host per the vendor homepage
  url "http://www.lemkesoft.org/files/graphicconverter/gc#{version}.dmg"
  appcast 'http://www.lemkesoft.org/files/graphicconverter/graphicconverter9.xml',
          :sha256 => '9c9a6a1078dddc8487a3676e9d13bd78929de3c68d75c635b01732d9409a238c'
  name 'GraphicConverter'
  homepage 'http://www.lemkesoft.de/en/products/graphicconverter/'
  license :commercial

  app "GraphicConverter #{version.to_i}.app"
end
