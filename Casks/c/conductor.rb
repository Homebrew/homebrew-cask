cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.75.0,01KXED75FECQH2HXSAF2YCC4SW"
    sha256 "cbbade26a5a2be56cb4a4079a84c45b0a3f655f93bff56f4544ec59b7be61f69"
  end
  on_intel do
    version "0.75.0,01KXED710DZ502R66S4PBA2RG9"
    sha256 "7e5fec7d8007cbdc6a80293ccdfbfdd9d650e0fd87800222d93fe27e02b6a67e"
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
