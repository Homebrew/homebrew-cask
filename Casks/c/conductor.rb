cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.38.1,01KK2ANFAVVEDS0VTTDY6AEPZT"
    sha256 "c3e0f0f7faf0666d5b53ec8bdc2fd04fd77e1e411cd3096c059e636fdf9d5b4f"
  end
  on_intel do
    version "0.38.1,01KK2AE85VF62GPG71F0HF9DT0"
    sha256 "1c03163050c3dcd350d4ef03e903840c4674d8195ebfbd3be49977bcfd4b3281"
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
