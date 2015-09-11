cask :v1 => 'ammonite' do
  version '1.12'
  sha256 '4bc4dd3c77efea03c324d7e671549ca9a7b23946f421c8bcbca5269c76d692be'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  name 'Ammonite'
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml',
          :sha256 => '7c92236e3cb60afca3fa7e1a635a801e1c26c59efeec3c57b76c5c30a1946baf'
  homepage 'http://www.soma-zone.com/Ammonite/'
  license :closed

  app 'Ammonite.app'
end
