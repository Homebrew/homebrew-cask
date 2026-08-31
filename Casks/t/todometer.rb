cask "todometer" do
  on_arm do
    version "3.0.3"
    sha256 "862cdb44d5fc006d2c858add489c5c17796e4dbad7df154dd79f4c69ffd258da"

    url "https://github.com/cassidoo/todometer/releases/download/v#{version}/todometer-#{version}-arm64-mac.zip"

    depends_on macos: :monterey

    app "todometer.app"
  end
  on_intel do
    version "2.0.1"
    sha256 "b8de5c09dc1d5d026130555f3cc85c949ddd7bd0cbf63a45bd1d4c2aba6cbf31"

    url "https://github.com/cassidoo/todometer/releases/download/v#{version}/todometer.for.mac.zip"

    livecheck do
      skip "Legacy version"
    end

    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on macos: :big_sur

    app "mac/todometer.app"
  end

  name "todometer"
  desc "Meter-based to-do list"
  homepage "https://cassidoo.github.io/todometer/"

  depends_on :macos

  zap trash: [
    "~/Library/Application Support/todometer",
    "~/Library/Preferences/com.electron.todometer.plist",
  ]
end
