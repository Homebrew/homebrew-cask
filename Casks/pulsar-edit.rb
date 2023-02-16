cask "pulsar-edit" do
  arch intel: "Intel", arm: "Silicon"

  version "1.102.0"
  sha256 intel: "b3350445ea50139849312ad03dc535b4ede20ea47c24fa1564814cbc9a186d0e",
         arm:   "07fb1e91ae99bfbc40833ec19339d05de708e6a41ec4a68c697f2e028490f68d"

  url "https://github.com/pulsar-edit/pulsar/releases/download/v#{version}/#{arch}.Mac.#{version}.zip",
      verified: "github.com/pulsar-edit/pulsar"
  name "Pulsar"
  desc "Text editor"
  homepage "https://pulsar-edit.dev/"

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
