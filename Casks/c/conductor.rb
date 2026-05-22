cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.56.0,01KS8GMB48X900EXN50P4XW72J"
    sha256 "fde9d0226a3d39361cd35457ea82dee7af7dc2715529bd5a3e32677d0a4de2e0"
  end
  on_intel do
    version "0.56.0,01KS8GM3BJBRDMAWGQBWC3RBP7"
    sha256 "941232c5e2f94d9ea010bc772cfc2dc4921f44dd0cb936c459c590e18ac8a537"
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
