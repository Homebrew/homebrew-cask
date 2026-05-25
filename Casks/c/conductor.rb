cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.57.0,01KSG2Z872V5C3JS3AXSHJ9TX6"
    sha256 "d0792e717c2038fec62ecc178d0f8020fc7c86b4001395791c260db6ffe8f01e"
  end
  on_intel do
    version "0.57.0,01KSG2ZD91D8DR02YND5G7BCKG"
    sha256 "00f127badc937f4f50109988649e23e769412a04e32e43b03276d0eb23e21d60"
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
