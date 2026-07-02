cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.71.1,01KWGDJPY6SY8KA3XGWJART6WJ"
    sha256 "ad9af1af69dc9abd0501cdc9036d72c2bdbca1e5d1c409b7eef3b154b536621d"
  end
  on_intel do
    version "0.71.1,01KWGDJTXHNCMVXVE4KK0C0CA6"
    sha256 "cc8c2192b70183bbc7adbc32005379e0602086ef363e8966facb6834c04fb0d0"
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
