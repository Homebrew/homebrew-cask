cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.7.2"
  sha256 arm:   "f4c11efd03f04be392af3b2fb81cf9278a9db1b045d2b193723f42da74d27dff",
         intel: "98e66ed2eb1f0c0d7a251e1bc67ec8c44b5e79fb528aa902813daab71f5e8f3f"

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
