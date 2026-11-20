cask "glide-browser" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.65a"
  sha256 arm:   "c1b8e9ef1c48d260cc59c0421bf785d07d170b0e1f3fb91968756c9782da4cd6",
         intel: "7c80d6c200c2b4cdc4e5833f188345659a2c16ff398b2b49f1a0a1cae53b017c"

  url "https://github.com/glide-browser/glide/releases/download/#{version}/glide.macos-#{arch}.dmg"
  name "Glide Browser"
  desc "Extensible, firefox-based web browser"
  homepage "https://glide-browser.app/"

  livecheck do
    url "https://updates.glide-browser.app/versions/latest/browser/Darwin_#{arch}-gcc3/glide/update.xml"
    strategy :xml do |xml|
      xml.get_elements("//update").map { |item| item.attributes["appVersion"] }
    end
  end

  auto_updates true
  conflicts_with cask: "glide"
  depends_on :macos

  app "Glide.app"
  binary "#{appdir}/Glide.app/Contents/MacOS/glide"

  zap trash: [
        "~/Library/Application Support/Glide Browser",
        "~/Library/Application Support/glide",
        "~/Library/Caches/Glide Browser",
        "~/Library/Caches/glide",
        "~/Library/Caches/Mozilla/updates/Applications/Glide Browser",
        "~/Library/Caches/Mozilla/updates/Applications/Glide",
        "~/Library/Preferences/app.glide-browser.glide.plist",
        "~/Library/Preferences/org.mozilla.com.glide.browser.plist",
        "~/Library/Saved Application State/app.glide-browser.glide.savedState",
        "~/Library/Saved Application State/org.mozilla.com.glide.browser.savedState",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
