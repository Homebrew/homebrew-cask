cask "dupeguru" do
  version "4.2.0"
  sha256 "4fbb46df4f11c0c4510b406ce6055b849381e08c7dc7f09f05849a7d1c353b6d"

  url "https://github.com/arsenetar/dupeguru/releases/download/#{version}/dupeguru_macOS_Qt_#{version}.zip",
      verified: "github.com/arsenetar/dupeguru/"
  name "dupeGuru"
  desc "Finds duplicate files in a computer system"
  homepage "https://dupeguru.voltaicideas.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "dupeguru.app"

  zap trash: [
    "~/Library/Application Support/dupeGuru",
    "~/Library/Preferences/com.hardcoded-software.dupeguru.plist",
    "~/Library/Saved Application State/com.hardcoded-software.dupeguru.savedState",
  ]
end
