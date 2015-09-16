cask :v1 => 'minimetro' do
  version 'alpha13b'
  sha256 '77416668bc5c2a982642cb692b35b7f0b5854cb950750477aa6d362d2b68246b'

  url "http://dinopoloclub.com/minimetro/builds/#{version.sub(%r{[a-z]$},'')}/MiniMetro-#{version}-osx.zip"
  name 'Mini Metro'
  homepage 'http://dinopoloclub.com/minimetro/'
  license :commercial

  app "MiniMetro-#{version}-osx.app"
end
