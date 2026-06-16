cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.65.3,01KV7F4GJC60QCQC1FXBVBJ7W4"
    sha256 "2f402f9f6579c253e45ee4e3ef95b8b10ad44ed63c5035200817a9175e6caa44"
  end
  on_intel do
    version "0.65.3,01KV7F4MM9XW2AZG6E9CPX5DQE"
    sha256 "618a2e3a06270eb15c7619f1f4d90885c3486479a04f37f53816fcea5e07e093"
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
