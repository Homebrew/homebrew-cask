cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.7.6"
  sha256 arm:   "d5b78e10b382ecb3bb0cc8ab1c7617cb84654284497c0bd476e9c75fff19c2d4",
         intel: "386443abb60a66d4247f0417db1f4bb89a8bb50fd0afec017e9d2e1cd2697bf2"

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
