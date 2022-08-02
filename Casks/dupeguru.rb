cask "dupeguru" do
  version "4.3.1"
  sha256 "eb8583f1a678325ac263e59c81144b021cac323ceb2743454a8eec2c20c21a7a"

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
