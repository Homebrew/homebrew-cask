cask "cocoarestclient" do
  version "1.4.6"
  sha256 "1bca8c7980fe656b95907569519538905da2141974e2bb9df2600a242f00b4e6"

  url "https://github.com/mmattozzi/cocoa-rest-client/releases/download/#{version}/CocoaRestClient-#{version}.dmg",
      verified: "github.com/mmattozzi/cocoa-rest-client/"
  name "CocoaRestClient"
  desc "App for testing HTTP/REST endpoints"
  homepage "https://mmattozzi.github.io/cocoa-rest-client/"

  depends_on macos: ">= :sierra"

  app "CocoaRestClient.app"
end
