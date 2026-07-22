cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.76.1,01KY5D6T93J32QR02CE7JD5W1Z"
    sha256 "9448270b7ed2db152054149e9c545a7fb16dce29616e0ccd8b51272bf99d0d34"
  end
  on_intel do
    version "0.76.1,01KY5D6M9S58WQWFM7FVBPAA0S"
    sha256 "190cff7b856fffa1c547dc6fd485f10b0e7bf5ffd68c1b8562afb16489542fb4"
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
  depends_on :macos

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
