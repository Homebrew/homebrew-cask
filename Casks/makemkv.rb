cask :v1 => 'makemkv' do
  version '1.9.0'
  sha256 'd7889b105ad7ef29c69a255279b129a8555c0101875e353431b6eb50b48dc222'

  url "http://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  homepage 'http://www.makemkv.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'MakeMKV.app'
end
