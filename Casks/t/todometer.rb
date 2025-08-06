cask "todometer" do
  version "2.0.1"
  sha256 "b8de5c09dc1d5d026130555f3cc85c949ddd7bd0cbf63a45bd1d4c2aba6cbf31"

  url "https://github.com/cassidoo/todometer/releases/download/v#{version}/todometer.for.mac.zip",
      verified: "github.com/cassidoo/todometer/"
  name "todometer"
  desc "Meter-based to-do list"
  homepage "https://cassidoo.github.io/todometer/"

  app "mac/todometer.app"

  zap trash: [
    "~/Library/Application Support/todometer",
    "~/Library/Preferences/com.electron.todometer.plist",
  ]

  caveats do
    requires_rosetta
  end
end
