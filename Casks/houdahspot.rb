cask 'houdahspot' do
  version '4.1.6'
  sha256 '92f1c9750f0a9ed7c04f08bc57ac6000e34cd3ef42623ab32c95424edf024a57'

  url "https://www.houdah.com/houdahSpot/updates/cast4_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: 'a975510eb259bb214705492135233e194664dc3eb176c6986cba779dfc40640b'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'
  license :commercial

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
