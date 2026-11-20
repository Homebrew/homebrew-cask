cask "nao" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "c47b07ffcaaf2b9ef7cf991782f00e3766afd1e94a87c87100470ff4dc9ccae0",
         intel: "2bd628d3b3a5dd82b431b7daa35b75563913ea1d9378266d2aafb35fce62d95c"

  url "https://storage.googleapis.com/nao-releases/nao/darwin-#{arch}/#{version}/nao.#{arch}.#{version}.dmg"
  name "nao"
  desc "AI code editor for data"
  homepage "https://getnao.io/"

  livecheck do
    url "https://storage.googleapis.com/nao-releases/nao/darwin-#{arch}/releases.json"
    regex(/nao[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.zip/i)
    strategy :json do |json, regex|
      json["releases"]&.map do |release|
        match = release.dig("updateTo", "name")&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on :macos

  app "nao.app"
  binary "#{appdir}/nao.app/Contents/Resources/app/bin/nao"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nao.sfl*",
    "~/Library/Application Support/nao",
    "~/Library/Caches/com.nao",
    "~/Library/Caches/com.nao.ShipIt",
    "~/Library/HTTPStorages/com.nao",
    "~/Library/Preferences/com.nao.plist",
    "~/Library/Saved Application State/com.nao.savedState",
  ]
end
