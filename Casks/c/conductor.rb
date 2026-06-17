cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.67.0,01KV9G8ZAVKMXFE2NMGF444QJ1"
    sha256 "1fe723dd56cc498df983258820e1f1600f052ebc87742b4a90f52699d7fb73dd"
  end
  on_intel do
    version "0.67.0,01KV9G93QQPNWQ3TMET8X0Z3V6"
    sha256 "26198ecaee6e9492555d0d8520703eb3443638ec1acea787167d6dfcbf1e325e"
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
