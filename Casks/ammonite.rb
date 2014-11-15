cask :v1 => 'ammonite' do
  version '1.12'
  sha256 '4bc4dd3c77efea03c324d7e671549ca9a7b23946f421c8bcbca5269c76d692be'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  homepage 'http://www.soma-zone.com/Ammonite/'
  license :closed

  app 'Ammonite.app'
end
