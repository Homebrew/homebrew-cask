cask :v1 => 'supaview' do
  version '1.3.2'
  sha256 'd0940ea48223ce138260a25a8a070365d619acb0adbe96288e70e5b19ed10ff0'

  url "http://twinside.free.fr/supaview/SupaView.#{version}.zip"
  homepage 'http://twinside.free.fr/supaview/'
  license :unknown    # todo: improve this machine-generated value

  app 'SupaView.app'
end
