cask "cryptomator" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.6.11"

  if Hardware::CPU.intel?
    sha256 "9bb5ef5630a971c849d2471fdf6deebf14e182d1670a9eed588fb5632492fffb"
  else
    sha256 "efdfdea5eb8dd56b15e472c985c2e8a696f8a21fa1fd2794438baf586db8bce8"
  end

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}#{arch}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  livecheck do
    url "https://cryptomator.org/downloads/mac/thanks/"
    regex(%r{href=.*?/Cryptomator[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
