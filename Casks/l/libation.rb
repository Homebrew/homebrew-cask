cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "14.2.4"
  sha256 arm:   "28f86a785a595ac187bfa1d6b3590ea64eb6dee8a2b3211bb991921cfcbc7435",
         intel: "7c8966c559ba7c961ab961f9fee0d3a68af3f3f856bbc137d00dfe40383da28a"

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
