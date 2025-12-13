cask "glide-browser" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.56a"
  sha256 arm:   "feb31b734cdcbd03f9e5f70ebc1b9a71ed6be188a6a335fe7bd228c1a113dd67",
         intel: "f8a4627eff815f8713cc863537cefb2197f954461dbab8c6013b6d69e6ebb724"

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
