cask 'instant-articles-builder' do
  version '0.2.1'
  sha256 'b60edd847e10a48b20750be53ce04de8dcb4fbaf7405feea40dde5aae3c14c32'

  # github.com/facebook/instant-articles-builder/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/instant-articles-builder/releases/download/#{version}/Instant.Articles.Builder.for.Mac-#{version}.zip"
  appcast 'https://github.com/facebook/instant-articles-builder/releases.atom'
  name 'Facebook Instant Articles Builder'
  homepage 'https://facebook.github.io/instant-articles-builder/'

  app "Instant.Articles.Builder.for.Mac-#{version}/Instant Articles Builder.app"
end
