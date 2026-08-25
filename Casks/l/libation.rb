cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.7.11"
  sha256 arm:   "7f12dda69294a9f2c5c0814dfa7ad680ce928e91a1498e0ce0778df84f8d47d1",
         intel: "387b0038858c74a95ede205af280485dc5a935251f7cfff3c627f8acc0ac67f1"

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
