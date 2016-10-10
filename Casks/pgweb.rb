cask 'pgweb' do
  version '0.9.5'
  sha256 '677af53daac6c44f1bdc304bc6285245fef5a75b2a0f7a76d03213afb7268e3a'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: '9aee4e4f2d0ff344e9e255b8d82b8aec68cdcaf045e646ff223214789dc31a29'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end
