cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.82.6,01M0KFYP6Q1KSPXPXJ9X1NQ5G8"
    sha256 "2142a38b0851e3310641052aa1287ab302a083d7dd5893cac4fa733a460eb902"
  end
  on_intel do
    version "0.82.6,01M0KFYBYGK99V3JKE2CWJ046V"
    sha256 "3fd6548fb7266604e0ec5d6a4dce11e2773fb54f04e6fecfac9bd9426b405087"
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
