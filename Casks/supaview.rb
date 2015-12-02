cask :v1 => 'supaview' do
  version '1.3.2'
  sha256 'd0940ea48223ce138260a25a8a070365d619acb0adbe96288e70e5b19ed10ff0'

  url "http://twinside.free.fr/supaview/SupaView.#{version}.zip"
  name 'SupaView'
  appcast 'http://twinside.free.fr/supaview/supaview-appcast.xml',
          :sha256 => 'd8c47e3f827e1f85702713e72012cc62e0398cbf5a91d86122785bcce448425e'
  homepage 'http://twinside.free.fr/supaview/'
  license :gratis

  app 'SupaView.app'
end
