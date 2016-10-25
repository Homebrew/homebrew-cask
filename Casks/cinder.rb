cask 'cinder' do
  version '0.9.0'
  sha256 '29506d4fe2e0f64de740d5569117d51e0dcd6f195cb05abf66e42e74f4eee02c'

  url "https://libcinder.org/static/releases/cinder_#{version}_mac.zip"
  appcast 'https://github.com/cinder/cinder/releases.atom',
          checkpoint: '34a56a382e2a9712275ca7949028059987eb270356566e4e3599aebc856256a9'
  name 'Cinder'
  homepage 'https://libcinder.org'

  suite "cinder_#{version}_mac"
end
