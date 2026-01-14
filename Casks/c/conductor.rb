cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.30.0,01KEX05NA91G1CTWNN87JRFFDF"
    sha256 "e96bbfe3838cb3c6386848d77070ab70fbc14af85610b04f877fbb574ae3f2b9"
  end
  on_intel do
    version "0.30.0,01KEX01Q0DB2674J0BRV6KNZ2Q"
    sha256 "63b97c25e2d94b04174b6e406682bb8fa444315fd7f95079836742bcce550cf7"
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
