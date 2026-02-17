cask "glide-browser" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.59a"
  sha256 arm:   "983fdf518d934306f4ee7ea2ec51c183be828465a778985da7789421f463907a",
         intel: "6a1d8d49494a3ca1f3848a0df497240215f1dfbc18f060609324e55ca0c5ca80"

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
