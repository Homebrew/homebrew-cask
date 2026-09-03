cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "14.0.2"
  sha256 arm:   "291a8c2bc3c3f7589c4a8d9e31394d8f364a455d278b7af39045ec661b7d9d5e",
         intel: "c0ae1d335578714e7e43cfbdf560905f46980d7b7073c3048e2a14a0eb2c2ffc"

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
