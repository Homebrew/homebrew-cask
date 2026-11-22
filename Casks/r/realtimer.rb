cask "realtimer" do
  version "0.2.15,236,498964c235f9bbbb"
  sha256 "03f43e05a2b361325fdeda6be22e240bd3380cbbb3c622e9f042687b3ac5782c"

  url "https://realtimer.ai/dl/#{version.csv.third}/Realtimer-#{version.csv.first}-build#{version.csv.second}.dmg"
  name "Realtimer"
  desc "Real-time AI assistant for sales and real estate calls"
  homepage "https://realtimer.ai/"

  livecheck do
    url "https://realtimer.ai/help/releases/"
    regex(%r{/dl/(\h+)/Realtimer[._-]v?(\d+(?:\.\d+)+)[._-]build(\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[2]},#{match[0]}" }
    end
  end

  depends_on macos: :sonoma

  app "Realtimer.app"

  zap trash: [
    "~/Library/Application Support/Realtimer",
    "~/Library/Caches/ai.realtimer.mini",
    "~/Library/HTTPStorages/ai.realtimer.mini",
    "~/Library/Preferences/ai.realtimer.mini.plist",
    "~/Library/Saved Application State/ai.realtimer.mini.savedState",
  ]
end
