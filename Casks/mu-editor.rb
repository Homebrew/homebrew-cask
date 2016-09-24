cask 'mu-editor' do
  version :latest
  sha256 '74fbb4a29279663f602605336397053c0ad2864d8b5f8e9a03b316d4cf225123'

  url 'http://codewith.mu/mu.zip'
  name 'Mu'
  homepage 'http://codewith.mu/'
  license :gpl

  app 'mu.app'
end
