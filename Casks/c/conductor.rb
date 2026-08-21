cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.82.0,01M0H3KSQV0NG8PJG4RF4W8M0A"
    sha256 "3915bf8721c71a2dda173b6ea6dbdddacb056e9342001edc8ed11be7486fd643"
  end
  on_intel do
    version "0.82.0,01M0H3KNHC51RPGW1NAXHC405A"
    sha256 "fec3f1a42f48c73a810dc01be65cbe4d6993a12a764c1d12f904eee6df2c6382"
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
