cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.6.0"
  sha256 arm:   "28845ceccb55b4d5a320bddf4a9c16404329e11876d11a49e6200b9f367e8b5d",
         intel: "5d538321439b7e54d028558a51ba6e96c235eabf95d9f3196dd183e5c49ef1fa"

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
