cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.77.0,01KY8QQZ7EZMDJZYN95R1017T2"
    sha256 "5e1765e3deeb0707010114e7d56e8015cd8c79b7225d099b2fb7a6b21d3b0890"
  end
  on_intel do
    version "0.77.0,01KY8QQV81Z8X5MGSQZQGQN0KR"
    sha256 "49a202447e6e14c681927ff1f65889d3b1754743ee93c0a73e9965f96353cd5e"
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
