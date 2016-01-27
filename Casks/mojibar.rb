cask 'mojibar' do
  version '2.0.0'
  sha256 '4d9dc78f26bb3fdc6db02d8b7ec723d361129073a1451feba97a8afff7413b20'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: '1e7da64353f4d3540439c1286dcd64fb3441797854522951d23781724c455977'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'
  license :mit

  app 'Mojibar-darwin-x64/Mojibar.app'
end
