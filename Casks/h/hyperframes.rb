cask "hyperframes" do
  arch arm: "arm64", intel: "x64"

  version "1067,f47e49775"
  sha256 arm:   "4002f52b2705e2cc2429a1a4f2cfae7ad869ec9851b3b7f326a9fb8627e85ab0",
         intel: "b0958c647b3048120e5ec0a5173be117f420e79b5216437a7c5ee6d2256eb58a"

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
