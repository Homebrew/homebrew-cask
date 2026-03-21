cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.43.0,01KM7APSYNZGPHXHAY5DGT2MM0"
    sha256 "6d16b25322dc68108f8e439ee239eae63ded08dd3a51af33593c94a6290f8600"
  end
  on_intel do
    version "0.43.0,01KM7APM4EAAYM5JW3TG2AQMBJ"
    sha256 "e57a6177ac635a91b84871d7046a081daac2675a5fc7d46ce1f5f22a92e7b908"
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
