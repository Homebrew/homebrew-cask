cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.64.3,01KTRQJSZTPMRVJTECD1488PGR"
    sha256 "6db7db0f9811a68cefe4c5dcf453d18c2ba2c8ad0666ace820fd7b0ed60ff269"
  end
  on_intel do
    version "0.64.3,01KTRQJMB480PG6SY74QK30VR2"
    sha256 "c3350bba72e9cfdd7c9abb8ada996339d3b594412d851d80a9390cad9c67e261"
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
