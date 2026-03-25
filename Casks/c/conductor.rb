cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.44.0,01KMH7GB1FS480WDBQ43P43HJ4"
    sha256 "dbfe3217772bb55f9a8b38b7e41c00e4fc38f1c09dc8ef1225bd72db21f270be"
  end
  on_intel do
    version "0.44.0,01KMH7GHZGXYKWV5ERF6A36Z5W"
    sha256 "58fea159c624832bddee1ac5fb1d25f3709757e2f7aa23fa4f9da2e56bbb2da1"
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
