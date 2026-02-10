cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.34.1,01KGT7BTCZGE69HKB06XXNYT3D"
    sha256 "e03f7ce7680fa44582303ca0ca122b0aa3054deafa6d8689953d57b61545ee54"
  end
  on_intel do
    version "0.34.1,01KGT7716RQQD30YGBJM88QV60"
    sha256 "e9420dacb16993f15ebbcebef58bc7fda93382c364956378c0e8e97a87f15f6f"
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
