cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.35.3,01KHENX078VA7W7CJQB453GJVZ"
    sha256 "4c74bdc2db2182c3587d39e6b08f056575df99760273b2f648c2cbd09d374dcd"
  end
  on_intel do
    version "0.35.3,01KHENXTCX6TRRFVMT20T7BVHA"
    sha256 "49651cf9db662fdb14a2d9c3b58de2ecc2f04ac8fc367de0e57b2e8bd7878dd1"
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
