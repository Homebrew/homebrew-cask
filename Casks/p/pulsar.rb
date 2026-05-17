cask "pulsar" do
  arch arm: "Silicon", intel: "Intel"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "1.132.0"
  sha256 arm:   "f6e5ed69a0d34b5f7e1927a2c68e89077726b5843204b905b437082c45d25ec3",
         intel: "5342e52b2304de02061051de1d409eede6f1ed2085d8b374a1c158abef23fa34"

  url "https://github.com/pulsar-edit/pulsar/releases/download/v#{version}/#{arch}.Mac.Pulsar-#{version}#{arch_suffix}.dmg",
      verified: "github.com/pulsar-edit/pulsar/"
  name "Pulsar"
  desc "Text editor"
  homepage "https://pulsar-edit.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Pulsar.app"
  binary "#{appdir}/Pulsar.app/Contents/Resources/app/ppm/bin/ppm"
  binary "#{appdir}/Pulsar.app/Contents/Resources/pulsar.sh", target: "pulsar"

  zap trash: [
    "~/.pulsar",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.pulsar-edit.pulsar.sfl*",
    "~/Library/Application Support/Pulsar",
    "~/Library/Preferences/dev.pulsar-edit.pulsar.plist",
    "~/Library/Saved Application State/dev.pulsar-edit.pulsar.savedState",
  ]
end
