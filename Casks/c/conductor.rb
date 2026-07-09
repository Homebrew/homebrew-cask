cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.73.2,01KX28WA6FFP2Y8PE00EAQTP3X"
    sha256 "247e0002a3c63ad8aaae17860e6fb207c3f1983f536829dd105a570926dd3204"
  end
  on_intel do
    version "0.73.2,01KX28VT738JCPS7FTAW79H1ZN"
    sha256 "f9e9f6e4eb3d28689cf182f0666e0506db9e9ffaf3a2e9e155629f7847a3791e"
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
