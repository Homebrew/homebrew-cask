cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.23.6,240121m1740elox"
  sha256 arm:   "e1207c692101f752ebcb508384da84f6f17df2ad25efc3a5d8ef34a96d7a73a5",
         intel: "2ddcc0cacb4565e07bfdc6ff83a082692996f2453f46344fd7fa28574c5e020c"

  url "https://download.todesktop.com/230313mzl4w4u92/Cursor%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/230313mzl4w4u92/"
  name "Cursor"
  desc "Write, edit, and chat about your code with AI"
  homepage "https://www.cursor.so/"

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
