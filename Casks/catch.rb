cask 'catch' do
  version '1.9.4'
  sha256 'a57c48fabe764c3bfe06747f669912b7e9787fa830e30b6d31640d44540c2414'

  # github.com/mipstian/catch was verified as official when first introduced to the cask
  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip"
  appcast 'https://github.com/mipstian/catch/releases.atom',
          checkpoint: '5d1a90f8341e2467530d4254620dbd2c1760eae5ce296ef3e31764c3ff74d2d3'
  name 'Catch'
  homepage 'https://www.giorgiocalderolla.com/index.html#catch'

  app 'Catch.app'
end
