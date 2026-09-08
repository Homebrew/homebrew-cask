cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "14.2.0"
  sha256 arm:   "2f76e85ca7a2b238905c0ab8e7253057758edb3aeb21365778766fa36189cc6e",
         intel: "6e9d7dcc3eb8e0a736f5097cc3f691c14289f6a69fe9d2f34d9d47ad41807996"

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
