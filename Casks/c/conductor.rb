cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.79.0,01KZ74VKDRH1B0R2ETWZNZ7T9Y"
    sha256 "5c86fcb224f70fac82a662061a7878e47a99d2b8cd56e0b1581a89dd96887b3f"
  end
  on_intel do
    version "0.79.0,01KZ74VTPHTG4K5DCE84AVXW4B"
    sha256 "abf7bb1890543db458bc40189135d553f19dc93e2e246ff91ba98e5faba61555"
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
