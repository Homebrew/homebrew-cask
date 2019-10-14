cask 'lab' do
  version '0.0.74,untagged-f2f7de6625ed43865c06'
  sha256 'c8073ba00c5fcc2bf724b02d257c0684a958df3a330465bef31e3f3c2122d7de'

  # github.com/c8r/lab was verified as official when first introduced to the cask
  url "https://github.com/c8r/lab/releases/download/#{version.after_comma}/Lab-#{version.before_comma}-mac.zip"
  appcast 'https://github.com/c8r/lab/releases.atom'
  name 'Lab'
  homepage 'https://compositor.io/lab/'

  app 'Lab.app'
end
