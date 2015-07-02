cask :v1 => 'intensify-pro' do
  version '1.0.5_708'
  sha256 'b7133a5e5bab8cfd4f8d576686be17528aef5a84b18256b9ba6654d67eff0c55'

  url "http://cdn.macphun.com/updates/IntensifyPro/IntensifyPro_Distribution_v#{version.gsub('.','_')}.zip"
  name 'Intensify Pro'
  appcast 'http://cdn.macphun.com/updates/IntensifyPro/appcast.xml',
          :sha256 => '1478fc12d15d86c890f76810c70d58ce7b1f2086c6ddf8f302a06e97404f133d'
  homepage 'http://macphun.com/intensify'
  license :commercial

  app 'Intensify Pro.app'
end
