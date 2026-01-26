cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.32.2,01KFNTP88SVS7GFKFX51ZRJW2E"
    sha256 "58958a67453d1bd32f2ec119f03b6bfb260b7dd189b322724a3bc47c84b602f8"
  end
  on_intel do
    version "0.32.2,01KFNTFNE8ZPNX31T65WFNHA4D"
    sha256 "ee9ed38effbb35342dbe729f1127254b68f94aa00b895aa784a58bec2ecb786c"
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
