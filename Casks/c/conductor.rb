cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.29.0,01KECRAFBXQ4M9CEG3GEEVREAA"
    sha256 "f9fb0669ce620947d2aee1a279df964e900aa024df5fde633d54170ae4c7e0db"
  end
  on_intel do
    version "0.29.0,01KECRB798KD36XWSA5PHHXF15"
    sha256 "fb38ac2d52207a46ad9bc56d3e165572cb544760f8b8a89adea5ab956ca99cfe"
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
