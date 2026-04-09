cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.46.1,01KNQTBZ16EF417C83B7QN5YAW"
    sha256 "efeba4268d0b0c4db54d68338d3e3f9d43756f751b612ea49c7cb8cd9271d99e"
  end
  on_intel do
    version "0.46.1,01KNQTCAKMESP9B1K46X8JGC8Q"
    sha256 "e6fdd88f69fb3dfdfa6b8610086bf55ab98e411ef0555e65b559f82ee534faca"
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
