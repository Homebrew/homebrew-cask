cask 'dropzone' do
  version '3.6.2'
  sha256 'c9f2df6979b4cdfd8c2040a47e1cfbd08634508e73321eaf797d1aef4221000a'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/sparkle/updates.xml',
          checkpoint: '157cdc4b0ac7d8a9e5f1a19b2d20333fe3f780e3e8982636e51247bf83c73f47'
  name 'Dropzone'
  homepage 'https://aptonic.com/'

  app "Dropzone #{version.major}.app"
end
