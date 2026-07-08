cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.73.1,01KX1JB2B3KYNZFVX5H9JM2PBM"
    sha256 "29b7721eb401019cf08cefc029c880541b294520edaedbb92d407f318ad8e37b"
  end
  on_intel do
    version "0.73.1,01KX1JASTCHDMDCBK0J56G1VV6"
    sha256 "b699c8200a0dd8a739debf688476662d76c933f1aab80e79f0aae6a374e99c89"
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
