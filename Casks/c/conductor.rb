cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.58.0,01KSJPV5R9BF9AB7Y6VK8AKHXT"
    sha256 "9f661302c675a085510c4d1d819df89045994314ba970fcb76c80d982e881001"
  end
  on_intel do
    version "0.58.0,01KSJPV0WEYE3MGVKBM8YEP24R"
    sha256 "7ffe717dec44b62a858ba46be8cc3e01a964dd08195bc3849771911583a8459c"
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
