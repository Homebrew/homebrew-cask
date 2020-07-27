cask "instant-articles-builder" do
  version "0.2.2"
  sha256 "2332bb4ce57f025871a393f78f48451f68b34b65a70f43db4e5065074818da1e"

  # github.com/facebook/instant-articles-builder/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/instant-articles-builder/releases/download/#{version}/Instant.Articles.Builder.for.Mac-#{version}.zip"
  appcast "https://github.com/facebook/instant-articles-builder/releases.atom"
  name "Facebook Instant Articles Builder"
  homepage "https://facebook.github.io/instant-articles-builder/"

  app "Instant.Articles.Builder.for.Mac-#{version}/Instant Articles Builder.app"
end
