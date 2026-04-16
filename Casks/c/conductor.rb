cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.48.2,01KPBNEZ70B3Q128WAMKKVJ2KB"
    sha256 "7a982cdbfadd527c057989fee6e8eeccba34fe5806f3f207c4824ac5f99d3a70"
  end
  on_intel do
    version "0.48.2,01KPBNER7W9RVB3ZKGJQTQMPB2"
    sha256 "c8401a69fadffebc3ce2cfa54046393ba94a0dc6456c9925fd11c10cae55b978"
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

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
