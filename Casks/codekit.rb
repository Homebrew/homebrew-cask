cask 'codekit' do
  version '3.1-25813'
  sha256 '5856af9a5035c25fac01875efc053f33f4da282c5f089b8dca9ef800fed47bd9'

  url "https://codekitapp.com/binaries/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '8a4e8e10d0d73b681d18252c8c8bd8cdd0a7c1a0ac18921b7f2596605c51e489'
  name 'CodeKit'
  homepage 'https://codekitapp.com/'

  auto_updates true

  app 'CodeKit.app'
end
