cask "todometer" do
  on_arm do
    version "3.0.0"
    sha256 "1fd5168ba37fcd43cea97b55e116bfcd271960dae249f5c2fbcfdd39a683b6d7"

    url "https://github.com/cassidoo/todometer/releases/download/v#{version}/todometer-#{version}-arm64-mac.zip",
        verified: "github.com/cassidoo/todometer/"

    depends_on macos: :monterey

    app "todometer.app"
  end
  on_intel do
    version "2.0.1"
    sha256 "b8de5c09dc1d5d026130555f3cc85c949ddd7bd0cbf63a45bd1d4c2aba6cbf31"

    url "https://github.com/cassidoo/todometer/releases/download/v#{version}/todometer.for.mac.zip",
        verified: "github.com/cassidoo/todometer/"

    livecheck do
      skip "Legacy version"
    end

    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on macos: :catalina

    app "mac/todometer.app"
  end

  name "todometer"
  desc "Meter-based to-do list"
  homepage "https://cassidoo.github.io/todometer/"

  zap trash: [
    "~/Library/Application Support/todometer",
    "~/Library/Preferences/com.electron.todometer.plist",
  ]
end
