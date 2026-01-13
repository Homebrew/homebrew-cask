cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.29.5,01KET2673H6VAGEQFX2MVPW49V"
    sha256 "b1d3a5728edfa6b9d1402a0621d6e10299e2dcd40b1dec053bcc387dd7d37c25"
  end
  on_intel do
    version "0.29.5,01KET2ABAV26E0F5JFBNW9KJXP"
    sha256 "a4abc7182537b7a987864fd7ddf55f95a0594acd620ac07e048a06d4d8c7bf36"
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
