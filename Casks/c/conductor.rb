cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.33.3,01KG61BE9ZZR09R6KPKBBE74C5"
    sha256 "a439311e1a6f533c40488c5e942fee0d6b2b442241c7f537e838ccee5e5ae335"
  end
  on_intel do
    version "0.33.3,01KG618MWG3R8EGM55JB6RDM77"
    sha256 "6170969329d43e78e05156a37cb3843e1658fdef1614d40d6b2cce9eb0201eeb"
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
