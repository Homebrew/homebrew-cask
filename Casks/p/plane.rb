cask "plane" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1,260806s32btpf34"
  sha256 arm:   "da589a6977e88d17082a66b7f22ea2787909b4660935dc3af5aa63317b6b5e99",
         intel: "30c5a8dbe45bebb11633afffed01aaa8b51ec3617d9dbba0d72d31d18472d8dd"

  url "https://download.todesktop.com/260130r75i625/Plane%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg"
  name "Plane"
  desc "Project management tool for tasks, sprints and docs"
  homepage "https://plane.so/"

  livecheck do
    url "https://download.todesktop.com/260130r75i625/latest-mac.yml"
    regex(/Plane\s+v?(\d+(?:\.\d+)+).*?Build\s+([a-z0-9]+)[._-]#{arch}\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Plane.app"

  zap trash: [
    "~/Library/Application Support/Plane",
    "~/Library/Preferences/com.todesktop.2405288gp0ar3qc.plist",
    "~/Library/Saved Application State/com.todesktop.2405288gp0ar3qc.savedState",
  ]
end
