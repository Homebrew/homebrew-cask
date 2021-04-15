cask "catch" do
  version "2.0"
  sha256 "030a9ea67418f8f4b2469b7d23341dbe46d7cd5c4a661458f5a28043165285d7"

  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip",
      verified: "github.com/mipstian/catch/"
  name "Catch"
  homepage "https://www.giorgiocalderolla.com/index.html#catch"

  app "Catch.app"
end
