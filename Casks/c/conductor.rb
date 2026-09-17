cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.86.0,01M2PBHZTTHHGECPYRMVCA0QCA"
    sha256 "b2eecee96b9299d5f8078fdb55212d1a747c0eaf184f8c6b0dc8a09cf0e3b634"
  end
  on_intel do
    version "0.86.0,01M2PBJ3W9X2M4384XBSXCR2P8"
    sha256 "b0262fe3c59478af565b10f448397e25706907d015703c0d1f4dbf14b325694f"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}"
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
