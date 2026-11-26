cask "hyperframes" do
  arch arm: "arm64", intel: "x64"

  version "1301,470877026"
  sha256 arm:   "999ac1adf5871b62c098163b120bd092e52fbf7212b0654a8fa28fa2f556bf46",
         intel: "2c6cd5c813339bf59d510f99815a6fd8808d9ed0fca6a4b75953677935d882a5"

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
