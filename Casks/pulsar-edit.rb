cask "pulsar-edit" do
  version "1.101.0-beta"

  on_intel do
    url "https://github.com/pulsar-edit/pulsar/releases/download/v#{version}/Intel.Mac.Pulsar-#{version}-mac.zip",
        verified: "github.com/pulsar-edit/pulsar"
    sha256 "e6f03e071ed1956543efea919b46ab90154348214ca9bd411b9541205aa82feb"
  end
  on_arm do
    url "https://github.com/pulsar-edit/pulsar/releases/download/v#{version}/Silicon.Mac.Pulsar-#{version}-arm64-mac.zip",
        verified: "github.com/pulsar-edit/pulsar"
    sha256 ""
  end

  name "pulsar-edit"
  desc "Text editor"
  homepage "https://pulsar-edit.dev/"

  livecheck do
    regex(/^v?(\d+(?:\.\d+)+(-beta)?)$/i)
  end

  app "Pulsar.app"
  binary "#{appdir}/Pulsar.app/Contents/Resources/app/ppm/bin/apm", target: "ppm"
  binary "#{appdir}/Pulsar.app/Contents/Resources/pulsar.sh", target: "pulsar"

  zap trash: [
    "~/.pular",
    "~/Library/Application Support/Pulsar",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.pulsar-edit.pulsar.sfl*",
    "~/Library/Preferences/div.pulsar-edit.pulsar.plist",
    "~/Library/Saved Application State/dev.pulsar-edit.pulsar.savedState",
  ]
end
