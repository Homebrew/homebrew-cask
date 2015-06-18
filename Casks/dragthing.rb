cask :v1 => 'dragthing' do
  version '5.9.12'
  sha256 '4a351c593aff1c3214613d622a4e81f184e8ae238df6db921dd822efeefe27e6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/tlasystems/DragThing-#{version}.dmg"
  name 'DragThing'
  homepage 'http://www.dragthing.com'
  license :freemium

  app 'DragThing.app'
end
