cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.65.2,01KV1N4CNDYV5NYW8GNDYB184V"
    sha256 "8bc3bb6b2a250865623d4aefde460c3c13c0327c83d70fc73dc5841e372925bc"
  end
  on_intel do
    version "0.65.2,01KV1N4H8QVG217M95Z6C9WYQC"
    sha256 "2fb4f83c504709480514532ee046fd0e1d733609940e8dc2ba0a8b0468153fd3"
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
