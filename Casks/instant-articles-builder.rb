cask 'instant-articles-builder' do
  version '0.2.0'
  sha256 '0a74d3d60d891c5fa99cb9a76efa4d16298acae2f8e802e0c0d0a8b3fa775f71'

  # github.com/facebook/instant-articles-builder was verified as official when first introduced to the cask
  url "https://github.com/facebook/instant-articles-builder/releases/download/#{version}/Instant.Articles.Builder.for.Mac-#{version}.zip"
  appcast 'https://github.com/facebook/instant-articles-builder/releases.atom'
  name 'Instant Articles Builder'
  homepage 'https://facebook.github.io/instant-articles-builder/'

  app 'Instant Articles Builder-darwin-x64/Instant Articles Builder.app'
end
