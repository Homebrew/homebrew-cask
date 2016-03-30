cask 'deep-dreamer' do
  version :latest
  sha256 :no_check

  url 'https://dl.devmate.com/com.realmacsoftware.deepdreamer/DeepDreamer.zip'
  name 'Deep Dreamer'
  homepage 'http://realmacsoftware.com/deepdreamer'
  license :commercial

  app 'Deep Dreamer.app'
end
