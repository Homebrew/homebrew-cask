cask :v1 => 'armitage' do
  version '11.21.13'
  sha256 'b9ce03f8276d148158a7a9116e0a7012f7b5d3370375071d76326acea89d240a'

  url "http://www.fastandeasyhacking.com/download/armitage20#{version.sub(%r{^(\d+)\.(\d+)\.(\d+)$},'\3\1\2')}.dmg"
  name 'Armitage'
  homepage 'http://www.fastandeasyhacking.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Armitage.app'
end
