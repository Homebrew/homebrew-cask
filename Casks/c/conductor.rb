cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.32.0,01KFK446B9M60FSN5BZQDZ78AW"
    sha256 "eeb90f83c3d40fb8f64158af67c5313717dd6bba7d3ff0715530ed98f0a9362d"
  end
  on_intel do
    version "0.32.0,01KFK43C5FSP6CQ03CH96PFXJG"
    sha256 "1e6fcc2bee8cf6f938b2536bc92572ca47bfdfef3d39caef85ff02e0b8c96eff"
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
