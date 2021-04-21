cask "instant-articles-builder" do
  version "0.2.3"
  sha256 "0656de713a6e0e112d02f3354b8021567671aeab01955456313aa76e4ce339c2"

  url "https://github.com/facebook/instant-articles-builder/releases/download/#{version}/Instant.Articles.Builder.for.Mac-#{version}.zip",
      verified: "github.com/facebook/instant-articles-builder/"
  name "Facebook Instant Articles Builder"
  homepage "https://facebook.github.io/instant-articles-builder/"

  app "Instant Articles Builder-darwin-x64/Instant Articles Builder.app"
end
