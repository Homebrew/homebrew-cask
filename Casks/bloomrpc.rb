cask "bloomrpc" do
  version "1.5.2"
  sha256 "af138f611156919169a1452a02d595ef5ae7a0e431dc90a537e9f47001f4c643"

  url "https://github.com/uw-labs/bloomrpc/releases/download/#{version}/BloomRPC-#{version}.dmg"
  name "BloomRPC"
  desc "GUI Client for GRPC Services"
  homepage "https://github.com/uw-labs/bloomrpc"

  app "BloomRPC.app"
end
