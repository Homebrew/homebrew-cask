cask "hyperframes" do
  arch arm: "arm64", intel: "x64"

  version "1294,470877026"
  sha256 arm:   "7536b6ada47b856c2be476d36f09a2e60b72fb285a7ea1cf74f5f64c7f18fefd",
         intel: "c601955118b2caf60451cec3d2f7b4115b3f078f812a9e2755cef45658607983"

  url "https://static.heygen.ai/hyperframes-oss/desktop/HyperFrames-b#{version.csv.first}-#{version.csv.second}-#{arch}.zip"
  name "HyperFrames"
  desc "Video editor for HTML-based compositions"
  homepage "https://hyperframes.heygen.com/"

  livecheck do
    url "https://static.heygen.ai/hyperframes-oss/desktop/latest.json"
    regex(/HyperFrames[._-]b(\d+)[._-](\h+)[._-]#{arch}\.zip/i)
    strategy :json do |json, regex|
      match = json.dig(arch, "url")&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "HyperFrames.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.hyperframes.desktop.sfl*",
    "~/Library/Application Support/HyperFrames",
    "~/Library/Logs/HyperFrames",
    "~/Library/Preferences/dev.hyperframes.desktop.plist",
  ]
end
