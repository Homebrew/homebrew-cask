cask "nao" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.6.0"
    sha256 "167176b488cd657c12958dcaf6a7b8a96f4b9239fb414a32f201ebc1c1817061"
  end
  on_intel do
    version "0.5.5"
    sha256 "1125d443edbe6f93c6eb0ba0885cc4da8cb6ac9d634b9650c642ad4084247b02"
  end

  url "https://storage.googleapis.com/nao-releases/nao/darwin-#{arch}/#{version}/nao.#{arch}.#{version}.dmg",
      verified: "storage.googleapis.com/nao-releases/nao/"
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

  depends_on macos: ">= :catalina"

  app "nao.app"
  binary "#{appdir}/nao.app/Contents/Resources/app/bin/nao"

  zap trash: [
    "~/Library/Application Support/nao",
    "~/Library/Caches/com.nao",
    "~/Library/Caches/com.nao.ShipIt",
    "~/Library/HTTPStorages/com.nao",
    "~/Library/Preferences/com.nao.plist",
    "~/Library/Saved Application State/com.nao.savedState",
  ]
end
