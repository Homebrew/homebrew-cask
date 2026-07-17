cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.5.1"
  sha256 arm:   "c94d9267303b2b19e9cbfad232e08c90fbada2a84b48a04b60ef03897f4518b3",
         intel: "da695fda92045f16c95c7d95c4fb6659f7f85c2944924c2c268d102bb326adb1"

  url "https://github.com/rmcrackan/Libation/releases/download/v#{version}/Libation.#{version}-macOS-chardonnay-#{arch}.dmg",
      verified: "github.com/rmcrackan/Libation/"
  name "Libation"
  desc "Audible audiobook manager and liberator"
  homepage "https://getlibation.com/"

  livecheck do
    url "https://github.com/rmcrackan/Libation"
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Libation.app"

  zap trash: [
    "~/Library/Application Support/Libation",
    "~/Library/Preferences/org.libation.macos.plist",
  ]
end
