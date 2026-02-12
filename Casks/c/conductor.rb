cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.35.0,01KH7FVBWW4QXYTA935H8ZMQN2"
    sha256 "6348aa8cbeb6ecb5e5eb8d4f7271fd167d824a6a6cbb32bde8eca528f794ef80"
  end
  on_intel do
    version "0.35.0,01KH7FVK8KPK6N9CP5H2AQFNRP"
    sha256 "88578368bcbe24992e657499f7f6cf12fd49b46bfe93b95106184eb74b792db1"
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
