cask "dupeguru" do
  version "4.1.1"
  sha256 "c132098630ef0a58d0f7ebcd5546d7709e67f95258f07d71f2c91ca9adb1804b"

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
end
