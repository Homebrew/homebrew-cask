cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "14.0.1"
  sha256 arm:   "e9deeff8e05fd51d772a6eb475f8e14161f92bb547bc74e6b8bd216205c47945",
         intel: "64d6dadc83d989ab2c26bf7ed52cc62d56eb6358d127fda70b5b5cc3fd13d916"

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
