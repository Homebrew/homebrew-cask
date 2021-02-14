cask "redream" do
  version "1.5.0"
  sha256 "e5253527a3705b4c99234ddf8ece59d19dfadb416822ad714f7009b82afc097b"

  url "https://redream.io/download/redream.x86_64-mac-v#{version}.tar.gz"
  name "melonDS"
  desc "Dreamncast emulator"
  homepage "https://redream.io/"

  app "redream.app"
end
