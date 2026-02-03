cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.33.5,01KGJNPABMYK1ZKY6B4SJ0WEKK"
    sha256 "487ee71a27f484509348f4ef17e093a6d444f45785d42566d9c6f56d0b8fffdb"
  end
  on_intel do
    version "0.33.5,01KGJNSVDQT5K98F7VCXCR36FE"
    sha256 "677a2b9b0929505dc64071af559d24427c087a39a1c65213f9722c593ab676e8"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "cdn.crabnebula.app/asset/"
  name "Conductor"
  desc "Claude code parallelisation"
  homepage "https://conductor.build/"

  livecheck do
    url "https://cdn.crabnebula.app/update/melty/conductor/darwin-#{arch}/latest"
    regex(%r{cdn.crabnebula.app/asset/(.+)}i)
    strategy :json do |json, regex|
      asset_id = json["url"]&.[](regex, 1)
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
