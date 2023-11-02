cask "cron" do
  arch arm: "arm64", intel: "x64"

  version "1.116.0,2311017rcjbjbtx"
  sha256 arm:   "66457edbbf2f5c736e885dea559629fb710717b6a8df8b777d13a2cb562ae278",
         intel: "2cc49e5b9e1b75b7c00e198025c55a601ca6876822fe8745a570a7554ed06b17"

  url "https://download.todesktop.com/210303leazlircz/Cron%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/210303leazlircz/"
  name "Cron Calendar"
  desc "Calendar for professionals and teams"
  homepage "https://cron.com/"

  livecheck do
    url "https://download.todesktop.com/210303leazlircz/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |item, regex|
      build = item["files"].first["url"][regex, 1]
      next if build.blank?

      "#{item["version"]},#{build}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Cron.app"

  zap trash: [
    "~/Library/Application Support/Cron",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end
