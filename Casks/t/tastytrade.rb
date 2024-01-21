cask "tastytrade" do
  arch arm: "-aarch64"

  version "2.8.0"
  sha256 arm:   "62532bc7b23a439e501c0eff1c3bab216adcbc5c64c05539d06fcdf5d1705088",
         intel: "98ace9292f65022780328fb3a61c98c6542e62046390770d16b8942a9b9e6be8"

  url "https://download.tastytrade.com/desktop-#{version.major}.x.x/#{version}/tastytrade-#{version}#{arch}.dmg"
  name "tastytrade"
  desc "Desktop trading platform"
  homepage "https://tastytrade.com/technology/"

  livecheck do
    url "https://tastytrade.com/page-data/technology/page-data.json"
    strategy :json do |json|
      static_hashes = json["staticQueryHashes"]

      version = static_hashes.map do |static_hash|
        content = Homebrew::Livecheck::Strategy.page_content("https://tastytrade.com/page-data/sq/d/#{static_hash}.json")
        next if content.blank? || content[:content].blank?

        hash_json = JSON.parse(content[:content])
        version = hash_json.dig("data", "contentstackGlobalSettings", "tastyworksSoftware", "desktopVersion")
        break version if version.present?
      end
    end
  end

  auto_updates true

  app "tastytrade.app"

  zap trash: [
    "~/Library/Application Support/tastytrade",
    "~/Library/Saved Application State/com.tastytrade.desktop.savedState",
  ]
end
