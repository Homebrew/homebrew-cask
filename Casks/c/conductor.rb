cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.87.3,01M3578CPMFEPHD2P7R58MF2JS"
    sha256 "c05c1b58a2b5a7442c82e09b824c681eab0d3daa899955d3b015641739a1008a"
  end
  on_intel do
    version "0.87.3,01M3578XS2VRZYQ8BJ7Y18BXAX"
    sha256 "384e9ff44818db8ef77c2cb05b9b018988c04d8be19c74bdb8c5f47370e887b3"
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
