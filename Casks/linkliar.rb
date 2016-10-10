cask 'linkliar' do
  version '1.1.2'
  sha256 '33b41b807daf1e87add1a361aa810f4e6e6840545f70664f0607afb6ccc11767'

  url "https://github.com/halo/LinkLiar/releases/download/#{version}/LinkLiar.app.zip"
  appcast 'https://github.com/halo/LinkLiar/releases.atom',
          checkpoint: 'c0b394576f668e81bcd5ece23aa070b9b2d7451c1f694b9dfee3ca9ddfdafe93'
  name 'LinkLiar'
  homepage 'https://github.com/halo/LinkLiar'

  app 'LinkLiar.app'
end
