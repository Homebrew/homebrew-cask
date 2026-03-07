cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.38.2,01KK3EY0J1XJW5CK6DWB6636W9"
    sha256 "fdf51af3efaa897a48857bbe4b6fe07c0813a3487e3b4af6976bb85284a1c64e"
  end
  on_intel do
    version "0.38.2,01KK3ERCYCFF99223HE6W6X9XD"
    sha256 "7412b22346e8bab5a047b012f8a8cf13ee6c848fbb46df22b2355c7f28b18d7d"
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
