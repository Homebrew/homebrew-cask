cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.7.1"
  sha256 arm:   "6aef1a8626cf9226e5a2efa46b5f00b651f472d5ebb84ce7816e766a227c5269",
         intel: "83845271ac1b6f46e7384c0e6e2ff71844a67b2340bddfa55b5c70522b4bce50"

  url "https://github.com/rmcrackan/Libation/releases/download/v#{version}/Libation.#{version}-macOS-chardonnay-#{arch}.dmg",
      verified: "github.com/rmcrackan/Libation/"
  name "Libation"
  desc "Audible audiobook manager and liberator"
  homepage "https://getlibation.com/"

  depends_on macos: :ventura

  app "Libation.app"
  binary "#{appdir}/Libation.app/Contents/MacOS/LibationCli", target: "libationcli"

  zap trash: [
    "~/Library/Application Support/Libation",
    "~/Library/Preferences/org.libation.macos.plist",
  ]
end
