cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.31.3,240402rq154jw46"
  sha256 arm:   "0ad64d72a9e9c34b64ed96987f77f65890fd34da7083cf1f798d80c4b7f5188e",
         intel: "c12337ab72ae22637af92f4c718c03df604c94012b430fdc4e9c79b3e8306593"

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
