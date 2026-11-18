cask "hyperframes" do
  arch arm: "arm64", intel: "x64"

  version "1086,10769d0d6"
  sha256 arm:   "6d021682c4fb93592387292bf878a91b458e219df7d05c61e39cb41097a426c4",
         intel: "a215a4755d3168bd32f1112bd710050520656a1fe946107455c4955ffac055a4"

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
