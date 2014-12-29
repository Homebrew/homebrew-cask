cask :v1 => 'komodo-ide' do
  version '8.5.4-86985'
  sha256 'dde427a79aa17f5404b15bb286c075857fe5407f98395cc97f3e0e9c8b27851c'

  url "http://downloads.activestate.com/Komodo/releases/#{version.sub(/-.*$/, '')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  homepage 'http://komodoide.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Komodo IDE 8.app'
end
