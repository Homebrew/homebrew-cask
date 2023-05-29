cask "endless-sky" do
  version "0.10.1"
  sha256 "42254a8d2c5efca82bc83b7081e9e73d0b361f8da1db14945f8240ea8f8f1df8"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/Endless-Sky-v#{version}.dmg",
      verified: "github.com/endless-sky/endless-sky/"
  name "Endless Sky"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  app "Endless Sky.app"

  zap trash: "~/Library/Application Support/endless-sky"
end
