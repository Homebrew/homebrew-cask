cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.49.2,01KPY9EYZPJHW3PVW52E3ZDARW"
    sha256 "3cc713163cd411a7899bf23263a8c533be9ccedf58efc3997f407c2f66d84868"
  end
  on_intel do
    version "0.49.2,01KPY9EN5NZ338EH0A4GZZW54F"
    sha256 "7e3c07bf3e697a35a8fe3423a363db2ea6acf652e764071e873afc3ca5be2000"
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
