cask "pulsar" do
  arch arm: "Silicon", intel: "Intel"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "1.107.1"
  sha256 arm:   "703be78f2ea3dcd3f9c048c22cd82e483be4820513584e1daa298f1828a9d89e",
         intel: "4f838e8d32dbedb355356e79f7dc330932d69567c36d3542bad1154523d4803a"

  url "https://github.com/pulsar-edit/pulsar/releases/download/v#{version}/#{arch}.Mac.Pulsar-#{version}#{arch_suffix}-mac.zip",
      verified: "github.com/pulsar-edit/pulsar/"
  name "Pulsar"
  desc "Text editor"
  homepage "https://pulsar-edit.dev/"

  app "Pulsar.app"
  binary "#{appdir}/Pulsar.app/Contents/Resources/app/ppm/bin/apm", target: "ppm"
  binary "#{appdir}/Pulsar.app/Contents/Resources/pulsar.sh", target: "pulsar"

  zap trash: [
    "~/.pulsar",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.pulsar-edit.pulsar.sfl*",
    "~/Library/Application Support/Pulsar",
    "~/Library/Preferences/div.pulsar-edit.pulsar.plist",
    "~/Library/Saved Application State/dev.pulsar-edit.pulsar.savedState",
  ]
end
