cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.35.1,240621pc2f7rl8a"
  sha256 arm:   "e4c58300a5c7dc6392902914ed5c203526da65a4779f901f63f29f63b39334e7",
         intel: "fc098bc6438a71be1091f953bbd2d435f6ed94718d04000b5d2a8849580a39bb"

  url "https://download.todesktop.com/230313mzl4w4u92/Cursor%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/230313mzl4w4u92/"
  name "Cursor"
  desc "Write, edit, and chat about your code with AI"
  homepage "https://cursor.sh/"

  livecheck do
    url "https://download.todesktop.com/230313mzl4w4u92/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |item, regex|
      build = item["files"].first["url"][regex, 1]
      next if build.blank?

      "#{item["version"]},#{build}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Cursor.app"

  zap trash: [
    "~/cursor-tutor",
    "~/Library/Application Support/Cursor",
    "~/Library/Logs/Cursor",
    "~/Library/Preferences/com.todesktop.*",
    "~/Library/Saved Application State/todesktop.com.ToDesktop-Installer.savedState",
  ]
end
