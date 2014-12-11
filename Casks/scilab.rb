cask :v1 => 'scilab' do
  version '5.5.1'
  sha256 '5c9455c10be9fceab63ef65231ad01a0ba68c5985481ae260a8db0a71637a3c0'

  url "http://www.scilab.org/download/#{version}/scilab-#{version}-x86_64.dmg"
  homepage 'https://www.scilab.org'
  license :unknown    # todo: improve this machine-generated value

  app "scilab-#{version}.app"
end
