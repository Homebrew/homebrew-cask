cask "plane" do
  arch arm: "arm64", intel: "x64"

  version "3.0.3,26101525r29j4d5"
  sha256 arm:   "73d711d16d2ba7f47899617cc4867abec85e5841ad60542a0a7d6f65e0975d34",
         intel: "d52996588fd86da0c9ca7e163e4475af7a3e6c33148a992dc4596f17698c6a87"

  url "https://download.todesktop.com/260130r75i625/Plane%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg"
  name "Plane"
  desc "Project management tool for tasks, sprints and docs"
  homepage "https://plane.so/"

  livecheck do
    url "https://download.todesktop.com/260130r75i625/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{yaml["version"]},#{match[1]}"
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
