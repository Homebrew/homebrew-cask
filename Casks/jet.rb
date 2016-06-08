cask 'jet' do
  version '1.7.0'
  sha256 'c792f572f09f4a1b489dd77316e5ce2a25bf6a684abb352a1a8e6e3d448376c5'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://codeship.com/documentation/docker/'
  license :closed

  depends_on formula: 'docker'

  binary 'jet'
end
