cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.35.2,01KH9WW1HYAF6DMT1E45MXY7FG"
    sha256 "f506e0070866b2f31b6be49783e113a296b0d6fcd404227af5b9864996e7af3f"
  end
  on_intel do
    version "0.35.2,01KH9X05E2GZ6HTVR1ZND7N7XF"
    sha256 "96bf309933ff3f851b0aed2a187a5baa76b58eda14456014ea27a34711c8500f"
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
