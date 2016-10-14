cask 'catch' do
  version '1.9.4'
  sha256 'a57c48fabe764c3bfe06747f669912b7e9787fa830e30b6d31640d44540c2414'

  # github.com/mipstian/catch was verified as official when first introduced to the cask
  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip"
  appcast 'https://github.com/mipstian/catch/releases.atom',
          checkpoint: '0b4257bc1e21f6c4ccc16c4b3f7f16da6106cfae5bd22b18c960a6991b0463dc'
  name 'Catch'
  homepage 'http://www.giorgiocalderolla.com/index.html#catch'

  app 'Catch.app'
end
