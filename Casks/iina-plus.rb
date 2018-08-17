cask 'iina-plus' do
  version 'v0.2-build2'
  sha256 'afca962306852e298e194dce9df59ad27b672c2802bb8a5ea36edf4489df6477'

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version}/iina+.app.zip"
  appcast 'https://github.com/xjbeta/iina-plus/releases.atom'
  name 'IINA+'
  homepage 'https://github.com/xjbeta/iina-plus'

  app 'iina+.app'
end
