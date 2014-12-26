cask :v1 => 'minimetro' do
  version 'alpha13b'
  sha256 '77416668bc5c2a982642cb692b35b7f0b5854cb950750477aa6d362d2b68246b'

  url "http://dinopoloclub.com/minimetro/builds/#{version.sub(%r{[a-z]$},'')}/MiniMetro-#{version}-osx.zip"
  homepage 'http://dinopoloclub.com/minimetro/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "MiniMetro-#{version}-osx.app"
end
