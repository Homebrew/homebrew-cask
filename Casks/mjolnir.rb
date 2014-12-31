cask :v1 => 'mjolnir' do
  version '0.4.3'
  sha256 '7f7a9579427f258a34663abed46845c81c35f676f63b2ae1acef2a7729745572'

  url "https://github.com/mjolnir-io/mjolnir/releases/download/#{version}/Mjolnir-#{version}.tgz"
  homepage 'http://mjolnir.io'
  license :oss

  app 'Mjolnir.app'
end
