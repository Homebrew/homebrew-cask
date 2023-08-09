cask "stoplight-studio" do
  arch arm: "mac-arm64", intel: "mac"

  version "2.10.0,8870.git-32fa2af"
  sha256 arm:   "b2759c56a14c82da2f4624f323208e6689cb511153eb4e1be5cc3e6ad7d60566",
         intel: "a89a3b8c76571c19314198ede0616657d71b75db09aa690f1374bb0050273f6a"

  url "https://github.com/stoplightio/studio/releases/download/v#{version.csv.first}-stable.#{version.csv.second}/stoplight-studio-#{arch}.dmg",
      verified: "github.com/stoplightio/studio/"
  name "Stoplight Studio"
  desc "Editor for designing and documenting APIs"
  homepage "https://stoplight.io/studio/"

  livecheck do
    url "https://github.com/stoplightio/studio/releases/latest"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)[._-]stable[._-]([^/]+)/stoplight[._-]studio[._-]#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "Stoplight Studio.app"

  zap trash: [
    "~/Library/Application Support/Stoplight Studio",
    "~/Library/Logs/Stoplight Studio",
    "~/Library/Preferences/com.stoplight.studio.plist",
    "~/Library/Saved Application State/com.stoplight.studio.savedState",
  ]
end
