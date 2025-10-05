cask "glide-browser" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.51a"
  sha256 arm:   "da7a7194a07f935b0ebfab45c151ede6d0ec305464c3f4aea802681d759106eb",
         intel: "3c30c6abd482f6a555ca2279f0eefa6e9bf79c9f1f03b6e50c1a9006ba603896"

  url "https://github.com/glide-browser/glide/releases/download/#{version}/glide.macos-#{arch}.dmg",
      verified: "github.com/glide-browser/glide/"
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

  app "Glide.app"
  binary "#{appdir}/Glide.app/Contents/MacOS/glide"

  zap trash: [
        "~/Library/Application Support/Glide Browser",
        "~/Library/Caches/Glide Browser",
        "~/Library/Caches/Mozilla/updates/Applications/Glide Browser",
        "~/Library/Caches/Mozilla/updates/Applications/Glide",
        "~/Library/Preferences/app.glide-browser.glide.plist",
        "~/Library/Preferences/org.mozilla.com.glide.browser.plist",
        "~/Library/Saved Application State/app.glide-browser.glide.savedState",
        "~/Library/Saved Application State/org.mozilla.com.glide.browser.savedState",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
