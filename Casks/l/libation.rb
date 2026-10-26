cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "14.2.3"
  sha256 arm:   "f3a1dcea3af83a1563bb4084f661f3596c3e19409656ad04bbe3d8c0eba2d445",
         intel: "9fca0c33b8eb4401ab8e3becd16123cb9dd92fe42426c983cb8588038fc75b0b"

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
