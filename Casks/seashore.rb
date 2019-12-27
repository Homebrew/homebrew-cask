cask 'seashore' do
  version '2.4.17'
  sha256 '901aae8fa490668bd65f23ae7926a70de6c60305b8cbbf3af3f2ef96960c70ed'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
