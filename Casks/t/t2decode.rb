cask "t2decode" do
  version "1.0.2.4"
  sha256 "3f89f1eca5e1cd76de9a46004327c2c07f1bb175488d09f9a0840bef71a11622"

  url "https://downloads.sourceforge.net/t2decode/v#{version}/T2DECODE-macOS.dmg",
      verified: "downloads.sourceforge.net/t2decode/"
  name "T2DECODE"
  desc "Offline simulator and toolkit for networking and cybersecurity"
  homepage "https://tutodecode.org/"

  app "T2DECODE.app"

  zap trash: [
    "~/Library/Application Support/T2DECODE",
    "~/Library/Preferences/org.t2decode.app.plist",
    "~/Library/Saved Application State/org.t2decode.app.savedState",
  ]
end
