cask "dupeguru" do
  version "4.3.0"
  sha256 "9fed13632e34a374039147c4acc7887d8018d5270d8fe8efbf1221ab08771d5c"

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
