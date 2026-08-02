cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.7.4"
  sha256 arm:   "a989b0a2eb875a36dd55e09f6dbed33b47530a210a00858804d4a59fc8225267",
         intel: "9208852c64951396e52da136e89288765735b64987283d0d6f3d3f5783af6f2f"

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
