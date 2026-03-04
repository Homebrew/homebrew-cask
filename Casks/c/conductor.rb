cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.37.0,01KJV52MBD2R69MXM49M419YCN"
    sha256 "ae621c203b9f64f6f9b5af3440e32834276824e10b1668f2b921c9dbb45bd53d"
  end
  on_intel do
    version "0.37.0,01KJV4Y8SYMGHWK6XTYN9MAQ7K"
    sha256 "44f3de4559053151a343e8e835fd2110317e72846540d9fd61a5fcfd6cc21568"
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
