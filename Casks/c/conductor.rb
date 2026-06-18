cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.67.1,01KVBZ6J19P9GP0P25C6FXR94K"
    sha256 "a743d3bfd19d9f9270cc2c54e367f377ab15a0238865a5143ca342a9842fbea7"
  end
  on_intel do
    version "0.67.1,01KVBZ70BR1WE5QRNKQ3GJPYWZ"
    sha256 "108b03b4bcfd4de44af70b5cb698788af7fcec43245d95bba83999044379e512"
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
