cask "glide-browser" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.60a"
  sha256 arm:   "aeae820b7826898d7b74dcaf883f40dc64f2bb163aec240623e04259313ef75c",
         intel: "619656b0cce18c0edc49af49c8083eab83108bf651a26d3575b6a631b8ccc24e"

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
