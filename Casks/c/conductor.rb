cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.61.0,01KSV4E5HG3DG4FNB2QJDY2182"
    sha256 "388ab98d43e1e21415f6323b1c71bc29da2e687f1de896473434d98ba4038a52"
  end
  on_intel do
    version "0.61.0,01KSV4E0ZMQRZKR77Q8G264K07"
    sha256 "9afe93e078dc3d4042a5c4bb08900442cf2b85a74ec0b46dab89af1457116d8d"
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
