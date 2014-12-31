cask :v1 => 'supersync' do
  version '6.1'
  sha256 'c97191ea844a581bbafc8382cac6449be577c1c8b5639c64033fb200fc3a79dc'

  url 'http://supersync.com/downloads/SuperSync-6.1.dmg'
  homepage 'http://supersync.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SuperSync.app'
end
