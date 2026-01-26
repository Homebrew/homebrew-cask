cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.4.3,01KEST6CR9J60ZZ1M31EG11KXH"
    sha256 "47955788fb9adf0398d33d35996d14c13b57bf4501609f02a7f7925162bcd202"
  end
  on_intel do
    version "0.4.3,01KESSYXX6699QFEJ1E5GTK471"
    sha256 "e2b9f91fb64f370941c83e3a3f44bce0a04236b83ca8dfb100a90c021c6b8072"
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
