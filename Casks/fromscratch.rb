cask 'fromscratch' do
  version '1.0.1'
  sha256 '6c3d25a26bca0ab018f808856afb09adfbb14c622e7aff69e47f6d26e6912036'

  url 'https://github.com/Kilian/fromscratch/releases/download/v1.0.0/FromScratch-darwin-x64-1.0.1.zip'
  name 'FromScratch'
  homepage 'https://fromscratch.rocks/'
  license :mit

  app 'FromScratch.app'
end
