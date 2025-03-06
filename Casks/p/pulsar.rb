cask "pulsar" do
  arch arm: "Silicon", intel: "Intel"
  arch_suffix = on_arch_conditional arm: "-arm64"

  version "1.126.0"
  sha256 arm:   "194cbd6b6453d658b17d889d29dea562f177e0289db615c9c6197894c169ca3a",
         intel: "fc3b8d2f4d7fb7fbf2b0ea2629deaa49369db5f82526d0b9acd7e17cd2fb358f"

  url "https://github.com/pulsar-edit/pulsar/releases/download/v#{version}/#{arch}.Mac.Pulsar-#{version}#{arch_suffix}-mac.zip",
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
