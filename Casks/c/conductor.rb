cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.33.4,01KGAJ91C9WSH5HYE5ZB573BCB"
    sha256 "4bee3e98fae70d1ce7357d1d7c242da5a847a5966e170ecd8c963259c8958b36"
  end
  on_intel do
    version "0.33.4,01KGAJEY47Y080ZV260K91GWK2"
    sha256 "6b2228d1b56db4220c7244cdfa47fb961e923f1fe3c5bad3b7971dfa7c959ce9"
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
