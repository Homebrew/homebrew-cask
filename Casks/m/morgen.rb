cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "4.0.5,260420z13cyzfjh"
  sha256 arm:   "31453c9721e6fc42ccf96606723039d12cf252a9b069dac835693018e8155d48",
         intel: "5ac5628f004d532e3f94f41be7287b2da15c01a42cdef4ed1885e8716fb0ee41"

  url "https://download.todesktop.com/210203cqcj00tw1/Morgen%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg",
      verified: "download.todesktop.com/210203cqcj00tw1/"
  name "Morgen"
  desc "All-in-one calendars, tasks and scheduler"
  homepage "https://morgen.so/"

  livecheck do
    url "https://download.todesktop.com/210203cqcj00tw1/latest-mac.yml"
    regex(/Morgen\s+v?(\d+(?:\.\d+)+).*?(?:Build\s+)([a-z0-9]+)[._-]#{arch}\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Morgen.app"

  zap trash: [
    "~/Library/Application Support/Morgen",
    "~/Library/Preferences/com.todesktop.210203cqcj00tw1.plist",
    "~/Library/Saved Application State/com.todesktop.210203cqcj00tw1.savedState",
  ]
end
