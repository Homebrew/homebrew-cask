cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.4.0,01KECRD2FAGW0VD5PF9MM1FH2D"
    sha256 "534ac03da0977e3881eed9bde8c8cb5a0b37d5f27fdbed24ad4f1e3a8ba360ea"
  end
  on_intel do
    version "0.4.0,01KECRAY0Y7MJ4YYWS0GWWFXSN"
    sha256 "6e5ef7cf2be6985725fea2764a00f822a6d46fd09eed58ae17efb55a44497263"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "crabnebula.app/asset/"
  name "Cap"
  desc "Screen recording software"
  homepage "https://cap.so/"

  livecheck do
    url "https://cdn.crabnebula.app/update/cap/cap/darwin-#{arch}/0.0.0"
    regex(%r{cdn.crabnebula.app/asset/(.+)}i)
    strategy :json do |json, regex|
      asset_id = json["url"]&.[](regex, 1)
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true

  app "Cap.app"

  zap trash: [
    "~/Library/Application Support/cap",
    "~/Library/Caches/com.cap.desktop",
    "~/Library/Preferences/com.cap.desktop.plist",
    "~/Library/Saved Application State/com.cap.desktop.savedState",
    "~/Library/WebKit/com.cap.desktop",
  ]
end
