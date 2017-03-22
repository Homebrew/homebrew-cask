cask 'eaglefiler' do
  version '1.7.5'
  sha256 '0105c3cd7027d9d0f6f158814143358fe3d80414ad44fe923a6f74828f10cb8a'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
