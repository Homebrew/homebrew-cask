cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "14.2.1"
  sha256 arm:   "196eee48308699edd1b33bc677af2153762e6bd235dba914a0caf24a11e6eee2",
         intel: "8338faf92b9b19fef49fb7b7c995c266763deed9c55a82ff4757b4f7e59ce714"

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
