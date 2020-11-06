cask "cocoarestclient" do
  version "1.4.5"
  sha256 "dccc638d7b8e9f793055cb1c4fc49da9f0f35e24e89f3559e53810150c77a6b1"

  # github.com/mmattozzi/cocoa-rest-client/ was verified as official when first introduced to the cask
  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg"
  appcast "https://github.com/mmattozzi/cocoa-rest-client/releases.atom"
  name "CocoaRestClient"
  desc "App for testing HTTP/REST endpoints"
  homepage "https://mmattozzi.github.io/cocoa-rest-client/"

  depends_on macos: ">= :sierra"

  app "CocoaRestClient.app"
end
