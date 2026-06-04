cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.61.4,01KT8P2BVE639BD9FNN60QD98X"
    sha256 "fd58b8da99a354015e10ec20c7549ba0eac3917e846b4446e9e8f41b2af33df2"
  end
  on_intel do
    version "0.61.4,01KT8P2GWW8PVSJQJRVXF2KREE"
    sha256 "2e7a8d975ccda739349176eb9e8666240a1133063c88bf067ca54de32bd97916"
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
