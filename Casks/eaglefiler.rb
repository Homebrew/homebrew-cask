cask 'eaglefiler' do
  version '1.8.1'
  sha256 '815694199d5cfd9f01a7bf4fd6b0bfdd946369cbb7f9cde6bd2ba66d50fdaedb'

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name 'EagleFiler'
  homepage 'https://c-command.com/eaglefiler/'

  app 'EagleFiler.app'
end
