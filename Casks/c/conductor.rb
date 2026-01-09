cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.29.2,01KEHQK1XR0GNPS57CJEZ6XV8H"
    sha256 "9435e64be38cd19701eab8231afe3eb036e57cdb608e762811826397ebcb5f37"
  end
  on_intel do
    version "0.29.2,01KEHQBNG8VFSC0Q3GWA7V8Y22"
    sha256 "bc4dacf71aaa4ea0817436e8d3a45b7d1dfaa267aa6a9173ae9dfc0dd1314f99"
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
