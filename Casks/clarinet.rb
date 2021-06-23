cask "clarinet" do
  version "0.12.0"
  sha256 "81d4963686cc1334f29ee3cd38ca0db67452e130d11f256d60cca20c4d0fa236"

  url "https://github.com/hirosystems/clarinet/releases/download/v#{version}/macos-x64"
  name "clarinet"
  desc "Clarity CLI designed to facilitate smart contract understanding, development, testing and deployment."
  homepage "https://github.com/hirosystems/clarinet/blob/master/README.md"

  binary "macos-x64", target: "clarinet"
end
