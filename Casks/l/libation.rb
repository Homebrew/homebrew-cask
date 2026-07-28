cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.7.0"
  sha256 arm:   "44eca156ee391f52fdd179bfc3a2625a1f189e6c00e273ec7097d8899c05f23b",
         intel: "4fba166fee053040a955f44d344954231944dd3549f2402077852c467ba38bd7"

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
