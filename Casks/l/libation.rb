cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "14.1.0"
  sha256 arm:   "fcdddff0da1c793951a6ac3f2e9d2386f20c47e92e079ff056f8678758924887",
         intel: "542b2b10aada3a89bafb76a223b23963382a301b644ee26205e6aad1df19c9e9"

  url "https://github.com/rmcrackan/Libation/releases/download/v#{version}/Libation.#{version}-macOS-chardonnay-#{arch}.dmg"
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
