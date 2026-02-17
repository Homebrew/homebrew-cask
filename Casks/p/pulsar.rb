cask "pulsar" do
  arch arm: "Silicon", intel: "Intel"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "1.131.1"
  sha256 arm:   "a49c541e94014dee71fc486f0c9d5fc25a835a07fe68e6c7c4002d55c57f4eb3",
         intel: "15455a0cc95b105907e49b82397202da102e913e87153410c29724f99af993ea"

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
