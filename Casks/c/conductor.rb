cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.74.0,01KX4DC8W1W1618TR6KFFGWAD6"
    sha256 "e31b548b2db2154703342f6faedb96c26f191ba96faff62c267fa77f00beb208"
  end
  on_intel do
    version "0.74.0,01KX4DC48XDN3JWB6F03ZVYAHW"
    sha256 "d76ad06fd274310b4bdf0c2def2d49644fe70d9061e204254334c754b7a854ca"
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
