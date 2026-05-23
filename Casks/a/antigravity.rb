cask "antigravity" do
  arch arm: "arm", intel: "x64"

  version "2.0.6,5413878570549248"
  sha256 arm:   "bf2ec5b31f03d1fbc98213e45a613319e7527d97badb7f09cb8357d9c1e86a9d",
         intel: "c6f5e1ca86e6dcd4d8b49be6dfab7a38776df243434996ca0c1ba8bedcde40f0"

  url "https://storage.googleapis.com/antigravity-public/antigravity-hub/#{version.csv.first}-#{version.csv.second}/darwin-#{arch}/Antigravity.dmg",
      verified: "storage.googleapis.com/antigravity-public/antigravity-hub/"
  name "Google Antigravity"
  desc "Agent orchestration platform"
  homepage "https://antigravity.google/product/antigravity-2"

  livecheck do
    url "https://antigravity.google/product/antigravity-2"
    regex(%r{/antigravity-hub/(\d+(?:\.\d+)+)-(\d+)/darwin-(?:arm|x64)/Antigravity\.dmg}i)
    strategy :page_match do |page, regex|
      js_file = page[/src=["']([^"']*main[._-][^"']+\.js)["']/i, 1]
      next if js_file.blank?

      js_page = Homebrew::Livecheck::Strategy.page_content(URI.join("https://antigravity.google/", js_file).to_s)
      js_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Antigravity.app"

  uninstall quit: "com.google.antigravity"

  zap trash: [
    "~/.antigravity/",
    "~/.gemini/antigravity/",
    "~/Library/Application Support/Antigravity",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.antigravity.sfl*",
    "~/Library/Caches/com.google.antigravity",
    "~/Library/Caches/com.google.antigravity.ShipIt",
    "~/Library/HTTPStorages/com.google.antigravity",
    "~/Library/Preferences/com.google.antigravity.plist",
    "~/Library/Saved Application State/com.google.Antigravity.savedState",
  ]
end
