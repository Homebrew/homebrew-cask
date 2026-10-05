cask "plane" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2,261005uheqkym9s"
  sha256 arm:   "d2e4fc673912d247ff405b6e24562197c35ab464428e2bc13a95d7358c8cbfff",
         intel: "f362737dae965f39519ee0dbd0d25b1c8a25226362bc3074d2eac683d32c49a8"

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
