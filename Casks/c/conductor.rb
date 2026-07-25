cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.77.4,01KYB39QNTE04DYMXE0BYRBDHV"
    sha256 "3526a125fc98c1b25e5913388a6e721e903a6f5a427ce5553b3d6a62c3a2d8a9"
  end
  on_intel do
    version "0.77.4,01KYB39K3S24NHG0HJJV0AMSGK"
    sha256 "dfa4f19e6965a3b651b95ef705ab5760ebcea3a78cc26501994133c504d3771a"
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
