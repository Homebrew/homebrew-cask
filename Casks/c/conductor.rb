cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.81.0,01KZYPA8QKPC3DNDS1YCWSDES8"
    sha256 "43350bc2f8e49543790b4cf111209a2b611b123857a3323f236b695a9679a556"
  end
  on_intel do
    version "0.81.0,01KZYPA4XZ1J0JVMY6ZF4PXYHX"
    sha256 "35bfd3028af90de787c6b967db57bb8f4223564bc272f39efbfd505b3778b695"
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
  depends_on :macos

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
