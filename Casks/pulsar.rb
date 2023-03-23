cask "pulsar" do
  arch arm: "-arm64"

  version "1.103.0"
  sha256 arm:   "87d540ee1df71e8763e3c615747cd0ef8810861ed46c93b1605edbae63ec9818",
         intel: "32285e0622f10ded87b98b2df77cd6f0d20465fbaf5b569b703d0d083370e929"

  on_arm do
    url "https://github.com/pulsar-edit/pulsar/releases/download/v#{version}/Silicon.Mac.Pulsar-#{version}#{arch}-mac.zip",
        verified: "github.com/pulsar-edit/pulsar/"
  end
  on_intel do
    url "https://github.com/pulsar-edit/pulsar/releases/download/v#{version}/Intel.Mac.Pulsar-#{version}#{arch}-mac.zip",
        verified: "github.com/pulsar-edit/pulsar/"
  end

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
