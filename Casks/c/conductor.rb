cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.37.1,01KJX1QKBWCFT73GDBSAQV4KSN"
    sha256 "258ad7b8c947a93ebe96bee84fc12deb6786a5b25f9b1d31fec602b3c3d07c2e"
  end
  on_intel do
    version "0.37.1,01KJX1Y070AJ540PNSCE4YV0EE"
    sha256 "e77bade3710fb0e3f4ccbfacf30a99e9dfd7b82e5cf89960c7578be59820adac"
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
