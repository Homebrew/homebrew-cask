cask "buckaroo" do
  version "3.0.2"
  sha256 "418f4afa74b9d9ba8e13983bb98ae190a7f46acc509a420a2459c85f0965498b"

  url "https://github.com/LoopPerfect/buckaroo/releases/download/v#{version}/buckaroo-macos",
      verified: "github.com/LoopPerfect/buckaroo/"
  name "Buckaroo is a Package Manager for C++ and Friends"
  homepage "https://buckaroo.pm/"

  binary "buckaroo-macos"
end
