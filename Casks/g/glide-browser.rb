cask "glide-browser" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.64a"
  sha256 arm:   "966d7f5db31d130cccde23109725ea83b9006c08313dcc10c1c0bf6833e082a6",
         intel: "acbaee1be598e97c83afcb7b82146951b429d31948897b9aff74d395f2f94eb4"

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
