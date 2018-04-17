cask 'freedom' do
  version '1.6.6'
  sha256 '947149825fba0a2f08db9540046826f7af0e375fdd875ec4b4c0c8bfac05bddf'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: '791723beaf499cf2382772e62246f2d5a6c760ddeb68d89d3c728bfff9ee9e16'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
