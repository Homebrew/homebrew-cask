cask 'graphicconverter' do
  version '9-2083'
  sha256 '2c3aa286866241f6c076e8b0e92a9a4ce0fdae27fab49828cd959239eaec76e7'

  # lemkesoft.org is the official download host per the vendor homepage
  url "http://www.lemkesoft.org/files/graphicconverter/gc#{version.to_i}_build#{version.sub(%r{^\d-}, '')}.dmg"
  appcast 'http://www.lemkesoft.org/files/graphicconverter/graphicconverter9.xml',
          :checkpoint => 'b4e3ab22d46d5b30ecb585efbc3e20c0984651c2f388631afe3b8acd447895e9'
  name 'GraphicConverter'
  homepage 'http://www.lemkesoft.de/en/products/graphicconverter/'
  license :commercial

  app "GraphicConverter #{version.to_i}.app"
end
