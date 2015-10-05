cask :v1 => 'kobito' do
  version '1.9.4'
  sha256 '350a788721c5ed68f50634c452123d3431cb722cc08c0cd212b8da7adfc81347'

  url "http://kobito.qiita.com/download/Kobito_v#{version}.zip"
  appcast 'http://kobito.qiita.com/appcast.xml',
          :sha256 => 'd39ff5e2dbc54ed1d7d332e3c775107eabab2bc0f99a1b766f4a9fd7f9448e17'
  name 'Kobito'
  homepage 'http://kobito.qiita.com/'
  license :gratis

  app 'Kobito.app'
end
