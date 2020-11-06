cask "bloomrpc" do
  version "1.4.1"
  sha256 "1ec49e12935198bb066f21547f6c84bd2f075c5b780eb318a9300605e4e25c95"

  url "https://github.com/uw-labs/bloomrpc/releases/download/#{version}/BloomRPC-#{version}.dmg"
  appcast "https://github.com/uw-labs/bloomrpc/releases.atom"
  name "BloomRPC"
  desc "GUI Client for GRPC Services"
  homepage "https://github.com/uw-labs/bloomrpc"

  app "BloomRPC.app"
end
