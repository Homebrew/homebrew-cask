cask "lodge" do
  version "1.0.0"
  sha256 "a524aac1d495b60301e4109e2fd003fc945c20dd766080ef0933995efa40c4e4"

  url "https://github.com/nklmilojevic/Lodge/releases/download/v#{version}/Lodge.app.zip",
      verified: "github.com/nklmilojevic/Lodge/"
  name "Lodge"
  desc "Clipboard manager"
  homepage "https://github.com/nklmilojevic/Lodge"

  livecheck do
    url "https://raw.githubusercontent.com/nklmilojevic/Lodge/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Lodge.app"

  uninstall quit: "com.nklmilojevic.Lodge"

  zap trash: [
        "~/Library/Application Support/Lodge",
        "~/Library/Preferences/com.nklmilojevic.Lodge.plist",
      ]
end
