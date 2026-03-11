cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.38.4,01KKD3MH2Y1JS3YH7Q6HHRWB9K"
    sha256 "ed0e416630faae6b5c17f64cf12c9f25a7b2b5ecefe16770acdd7398ca38676d"
  end
  on_intel do
    version "0.38.4,01KKD3M9BN36G9JWK9KV7YEGJJ"
    sha256 "a1ea32420661ad8353b20cf5265f9a4ead7079827fef343921d18d8976d628a3"
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
