cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.29.3,01KEMD0ZN0AKWB6B87HWH7KQ3J"
    sha256 "50904449c6ac5e66f5884565f4838504fed1ee8b9c376960cd5cffb83790ac1d"
  end
  on_intel do
    version "0.29.3,01KEMD0XV07AXT886C63B5QPFV"
    sha256 "0785052144f28da6d9545e41c98a467bca74810403ebf46e89f8b1a5ddf2be00"
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
