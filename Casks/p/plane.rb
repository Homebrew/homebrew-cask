cask "plane" do
  arch arm: "arm64", intel: "x64"

  version "3.0.4,261118mx4cwkker"
  sha256 arm:   "1383594ca0f9c133d6d73d5723b1e03ca7b2f1a0a990ff556f7c844d0f1f9018",
         intel: "250ea93580ffc42a6c92e5c95ac0796b9e868d8e5695c2d97bce476dffe61ca6"

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
