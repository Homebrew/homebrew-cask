cask "nao" do
  arch arm: "arm64", intel: "x64"

  version "0.16.2"
  sha256 arm:   "d3ab039679eef4be7c865ecfd6a020f91a5715261ade6b36b4f149d3dc483cb3",
         intel: "0d0402ccc759a50862b5edebbbbe40035dd60eca6a5c0882ee4da8d1ecf02c08"

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

  depends_on macos: ">= :big_sur"

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
