cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.69.0,01KVV5T0FRNJ24VNAM2EMYQ2N9"
    sha256 "d2301af28ce24aa65a0808456e07a808c3dc221e4bea31573ce91d41087214d9"
  end
  on_intel do
    version "0.69.0,01KVV5T5GYXCV0N8QCSH2MGX6Q"
    sha256 "f409b4b353adacf1f3d8a11d41d44281db7ad04ea0d93296ddad1d72ec60d6e8"
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
