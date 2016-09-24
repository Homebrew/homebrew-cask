cask 'swinsian' do
  version '1.12.2'
  sha256 'fffb06a68bfb42155e9c0c7e5d041f9299421e5fd79f078e006aaafa3c84b532'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: '929850b8eae9421855d49e1ce71d20a4a06e20cfd09f8a21ca99ea4096095190'
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
