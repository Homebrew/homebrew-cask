cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.48.0,01KP6V2H7W277H3YTYC4MJA8V1"
    sha256 "d4fa11329c6d82ace569907033b3e43ed151ab9e81da277c5f8c328bd0ac9ea6"
  end
  on_intel do
    version "0.48.0,01KP6V207B6R738C9WF0G5N2P0"
    sha256 "30c0da1f9bae813e4b1eef49bcb241d392917f4085b070689588831dd93f6771"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "cdn.crabnebula.app/asset/"
  name "Conductor"
  desc "Claude code parallelisation"
  homepage "https://conductor.build/"

  livecheck do
    url "https://cdn.crabnebula.app/update/melty/conductor/darwin-#{arch}/latest"
    regex(%r{/asset/([^?/]+)}i)
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
