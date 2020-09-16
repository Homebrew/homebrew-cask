cask "putio-adder" do
  version "3.0.4"
  sha256 "de25d4b698118ce459794121e8a58279820c3872dba7021255097aac021b375f"

  url "https://github.com/nicoSWD/put.io-adder/releases/download/v#{version}/put.io-adder-v#{version}.zip"
  appcast "https://github.com/nicoSWD/put.io-adder/releases.atom"
  name "Put.IO Adder"
  homepage "https://github.com/nicoSWD/put.io-adder"

  app "put.io adder.app"
end
