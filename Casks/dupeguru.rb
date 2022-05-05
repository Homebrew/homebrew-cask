cask "dupeguru" do
  version "4.2.1"
  sha256 "ce0a49f4524dbd2567a01635bb41f95c10fcac1267cb9372861a5e7098a5d41d"

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
