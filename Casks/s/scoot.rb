cask "scoot" do
  version "1.3"
  sha256 "805f45f365bf71f5cd28fb63dafff9acefbe4dae50912cb8e6dd3bca2bf74d31"

  url "https://github.com/mjrusso/scoot/releases/download/v#{version}/Scoot.app.zip"
  name "Scoot"
  desc "Keyboard-driven cursor actuator"
  homepage "https://github.com/mjrusso/scoot"

  depends_on macos: ">= :big_sur"

  app "Scoot.app"

  zap trash: [
    "~/Library/Application Scripts/com.mjrusso.Scoot",
    "~/Library/Containers/com.mjrusso.Scoot",
    "~/Library/Preferences/com.mjrusso.Scoot.plist",
  ]
end
