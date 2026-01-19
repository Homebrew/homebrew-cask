cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.31.3,01KFBYACJVQEXTVPRRV97DCNPV"
    sha256 "c01da6ae0a833180b7421d0bcd2c7f9a5b45d675570293c2b34149b93a0cbfd7"
  end
  on_intel do
    version "0.31.3,01KFBY6974J92T020GFH3198QZ"
    sha256 "89adc7aeba8f41d951e1c8759a6835010eb46ac4dbe5bed8fc6a2be32ab254ae"
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
