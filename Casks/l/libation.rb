cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "14.0.0"
  sha256 arm:   "f31d2a760322133c34dffbfdd150804f3da3c38915d588bd197098fb373bed5a",
         intel: "7e46e3f9fe62a260a8fb46786fdbff65c83436876d4ea54fb664ed1c287b70d8"

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
