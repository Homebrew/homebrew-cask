cask "cryptomator" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.6.10"

  if Hardware::CPU.intel?
    sha256 "84328376c3919a1b7948adbfbd446ea1e2d1f90f07808d866bb32a6f39cf0571"
  else
    sha256 "44aa23b9740a0f5563fda774ddf94d3511d2f6d27b296ab7ee0dea601329c095"
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
