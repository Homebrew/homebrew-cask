cask :v1 => 'kobito' do
  version '1.9.2'
  sha256 '8129e70fda4595fe4e4be5406f2383f5900421da2bc9b7c53cd0e74762f42ba2'

  url "http://kobito.qiita.com/download/Kobito_v#{version}.zip"
  appcast 'http://kobito.qiita.com/appcast.xml',
          :sha256 => 'd39ff5e2dbc54ed1d7d332e3c775107eabab2bc0f99a1b766f4a9fd7f9448e17'
  homepage 'http://kobito.qiita.com/'
  license :unknown

  app 'Kobito.app'
end
