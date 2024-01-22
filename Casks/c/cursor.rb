cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.23.5,2401215utj6tx6q"
  sha256 arm:   "3a8fa7d2bb91e3341985732b185b6e36f40a637bd635cb3f70ec66881955a207",
         intel: "88f5cc8cb1d295b530649bfc9603eac990fe0b0b781e500cb422de8d90aad9c4"

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
