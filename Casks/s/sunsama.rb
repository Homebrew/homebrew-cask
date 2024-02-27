cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "2.3.1,240227k9s7v6ynn"
  sha256 arm:   "1712abe95e6d7feeebd33f56b8c9f3d9ad84bab7585d57f1a3eb3b913fd35050",
         intel: "930678b166cc27baff85abf7250c1665bc74fcb1b7c8d59c56ca5b0782c78009"

  url "https://download.todesktop.com/2003096gmmnl0g1/Sunsama%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/2003096gmmnl0g1/"
  name "Sunsama"
  desc "Daily planner and calendar"
  homepage "https://www.sunsama.com/desktop"

  livecheck do
    url "https://download.todesktop.com/2003096gmmnl0g1/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |item, regex|
      build = item["files"].first["url"][regex, 1]
      next if build.blank?

      "#{item["version"]},#{build}"
    end
  end

  auto_updates true

  app "Sunsama.app"

  zap trash: [
    "~/Library/Application Support/Sunsama",
    "~/Library/Logs/Sunsama",
    "~/Library/Preferences/com.sunsama.native-app.plist",
    "~/Library/Saved Application State/com.sunsama.native-app.savedState",
  ]
end
