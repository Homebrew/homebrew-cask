cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.38.0,01KJZTP57GJ3SZPPS7S6E44HA7"
    sha256 "2991b4fa78ae064c33f190e08e7f3b8b2be1602edafb0527de0b6382f063e95e"
  end
  on_intel do
    version "0.38.0,01KJZTNHVG0HBA42EMVH31JTWF"
    sha256 "a209bfe4499d6c2c86fa46d18dce25ad5f48e54e2d336386168bfc3f8c0b5375"
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
