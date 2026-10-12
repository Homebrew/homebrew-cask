cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.90.2,01M4RK5VSP556DHARN864XV3WA"
    sha256 "cdf2b836cbdeb5b70de81c26cafcb978f95cfb2e0e8fd39e765b42cfd5e5e570"
  end
  on_intel do
    version "0.90.2,01M4RK5G7BR51SDGWAWC8ZFGG1"
    sha256 "d3d1a83ea78b463ee10a24ce27de3d91e00fed809ece09385423e2b6a1288ba5"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}"
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
