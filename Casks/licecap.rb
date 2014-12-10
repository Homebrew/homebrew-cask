cask :v1 => 'licecap' do
  version '1.24'
  sha256 '0aae74885097731048b7e2111db9afbe77c30eb10779898bf9ea817de845bcbb'

  url "http://www.cockos.com/licecap/licecap#{version.gsub('.','')}.dmg"
  homepage 'http://www.cockos.com/licecap/'
  license :unknown    # todo: improve this machine-generated value

  app 'LICEcap.app'
end
