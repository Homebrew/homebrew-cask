cask "hyperframes" do
  arch arm: "arm64", intel: "x64"

  version "1306,28f3f0242"
  sha256 arm:   "1b4576c6c478791d5a674e35db18dc844454fac20afec330b31ef266e55df02f",
         intel: "1f88bd5f9d14e0fff7c5866db2db01468f951f5c5742b1a995c1b62d59b3945f"

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
