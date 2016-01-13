cask 'supaview' do
  version '1.3.2'
  sha256 'd0940ea48223ce138260a25a8a070365d619acb0adbe96288e70e5b19ed10ff0'

  url "http://twinside.free.fr/supaview/SupaView.#{version}.zip"
  appcast 'http://twinside.free.fr/supaview/supaview-appcast.xml',
          :checkpoint => '1a1c45ae7a9d8c16f08d9cfc79c39cce881927654d1045066a22a6beb28c51dd'
  name 'SupaView'
  homepage 'http://twinside.free.fr/supaview/'
  license :gratis

  app 'SupaView.app'
end
