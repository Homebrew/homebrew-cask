cask "nosleep" do
  version "1.5.2"
  sha256 "582893f1d457399cebf50efaaa76fdffca6e20a2e6f95635053576ecf94749c7"

  url "https://github.com/integralpro/nosleep/releases/download/#{version}/NoSleep-#{version}.dmg",
      verified: "github.com/integralpro/nosleep/"
  name "NoSleep"
  desc "Kernel extension that prevents sleep when the lid is closed"
  homepage "https://integralpro.github.io/nosleep/"

  depends_on macos: ">= :high_sierra"

  app "NoSleep.app"
end
