cask "gram" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.1"
  sha256 arm:   "05737e4df10d162501407d2870aa605e6ded878e7a695c1c3af51a643dbcd5de",
         intel: "6c8dfabb3afeceef28af0b3a15798b972e9b83add959236ec2d31e24cae40fc4"

  url "https://codeberg.org/GramEditor/gram/releases/download/#{version}/Gram-#{arch}-#{version}.dmg",
      verified: "codeberg.org/GramEditor/"
  name "Gram"
  desc "Code editor focused on stability, without AI, subscriptions, or telemetry"
  homepage "https://gram.liten.app/"

  depends_on macos: ">= :catalina"

  app "Gram.app"
  binary "#{appdir}/Gram.app/Contents/MacOS/cli", target: "gram"

  zap trash: [
    "~/Library/Application Support/Gram",
    "~/Library/Caches/Gram",
    "~/Library/Logs/Gram",
    "~/Library/Preferences/se.ziran.Gram.plist",
  ]
end
