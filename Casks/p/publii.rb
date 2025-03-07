cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.46.4,17047"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://getpublii.com/download/Publii-#{version.csv.first}-#{arch}.dmg"
  name "Publii"
  desc "Static website generator"
  homepage "https://getpublii.com/"

  livecheck do
    url "https://getpublii.com/download/"
    regex(/\(build\s+(\d+)\).*?href=["']?[^"' >]*?Publii[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/im)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "Publii.app"

  zap trash: [
    "~/Documents/Publii",
    "~/Library/Application Support/Publii",
    "~/Library/Logs/Publii",
    "~/Library/Preferences/com.tidycustoms.publii.plist",
  ]
end
