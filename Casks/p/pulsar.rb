cask "pulsar" do
  arch arm: "Silicon", intel: "Intel"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "1.130.1"
  sha256 arm:   "71d954deb32600b60a6722077bac4fb8f2180d4b56a9b10ca7177513cef0c4ae",
         intel: "4ea04e209777061a7851332073d5bc20112dad5e0d054793a4066716e3bf341c"

  url "https://github.com/pulsar-edit/pulsar/releases/download/v#{version}/#{arch}.Mac.Pulsar-#{version}#{arch_suffix}.dmg",
      verified: "github.com/pulsar-edit/pulsar/"
  name "Pulsar"
  desc "Text editor"
  homepage "https://pulsar-edit.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Pulsar.app"
  binary "#{appdir}/Pulsar.app/Contents/Resources/app/ppm/bin/apm", target: "ppm"
  binary "#{appdir}/Pulsar.app/Contents/Resources/pulsar.sh", target: "pulsar"

  zap trash: [
    "~/.pulsar",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.pulsar-edit.pulsar.sfl*",
    "~/Library/Application Support/Pulsar",
    "~/Library/Preferences/dev.pulsar-edit.pulsar.plist",
    "~/Library/Saved Application State/dev.pulsar-edit.pulsar.savedState",
  ]
end
