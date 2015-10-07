cask :v1 => 'kobito' do
  version '1.9.4'
  sha256 '350a788721c5ed68f50634c452123d3431cb722cc08c0cd212b8da7adfc81347'

  url "http://kobito.qiita.com/download/Kobito_v#{version}.zip"
  appcast 'http://kobito.qiita.com/appcast.xml',
          :sha256 => '70b8dc4167e751914b99d633cb7b40d79a6af3f1d4ffe12bdd31717a5b7d7644'
  name 'Kobito'
  homepage 'http://kobito.qiita.com/'
  license :gratis

  app 'Kobito.app'
end
