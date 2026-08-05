cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.7.5"
  sha256 arm:   "c3411938a705ca546ac0e008c3d8173acd11051db77e7ab0f17f5ef9bff0dee8",
         intel: "2b1fbd69f1a1ecb5a7a3d7ab8b615c888f1260fe428d88b1e75b8ce258154747"

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
