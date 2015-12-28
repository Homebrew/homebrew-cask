cask 'mjolnir' do
  version '0.4.3'
  sha256 '7f7a9579427f258a34663abed46845c81c35f676f63b2ae1acef2a7729745572'

  url "https://github.com/sdegutis/mjolnir/releases/download/#{version}/Mjolnir-#{version}.tgz"
  appcast 'https://github.com/sdegutis/mjolnir/releases.atom',
          :sha256 => 'bcbd84dc837113b342a6f780109b23825f3d6c6c208c7b68a193560eab832d80'
  name 'Mjolnir'
  homepage 'http://mjolnir.io'
  license :mit

  app 'Mjolnir.app'
end
