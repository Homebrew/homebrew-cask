cask '1clipboard' do
  version '0.1.8'
  sha256 'd1dee1594fa8b16a54bbcaf2d88b07e3bade0bb809416e535621ddb63b9e2b3d'

  url "http://1clipboard.io/download/darwin/#{version}/1Clipboard.zip"
  appcast 'http://1clipboard.io/download/darwin/',
          checkpoint: '7dc172ad10ca0239253aff64fae7a09d4b082f6c11cbcfae95be1e2bacb60f9d'
  name '1Clipboard'
  homepage 'http://1clipboard.io/'

  depends_on macos: '>= :mountain_lion'

  app '1Clipboard.app'
end
