cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.33.1,01KG10972DMR617VD6QNMEV9H5"
    sha256 "5f98bc6fb6eb8b9403e938185d3daacf3bf019987ab8ed42657d9a8a3426fc0e"
  end
  on_intel do
    version "0.33.1,01KG0ZSMPVR7NJF8VNQTNNFJCV"
    sha256 "2e5cfc309ed70a22fae0a2eb69fa185aa7228a0602e564defec1039b09699111"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "cdn.crabnebula.app/asset/"
  name "Conductor"
  desc "Claude code parallelisation"
  homepage "https://conductor.build/"

  livecheck do
    url "https://cdn.crabnebula.app/update/melty/conductor/darwin-#{arch}/latest"
    regex(%r{cdn.crabnebula.app/asset/(.+)}i)
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
