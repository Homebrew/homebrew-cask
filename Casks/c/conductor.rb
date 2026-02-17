cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.36.0,01KHPN7BTRXNG0SSCCGAKQ4MFW"
    sha256 "19a7ab745c4e0853bfc346291d7640ce8a8b055793acdd5f28fb599604c21e79"
  end
  on_intel do
    version "0.36.0,01KHPN98Q32WXGB7T9WRK941C4"
    sha256 "d39678b39c5c82a9358d45cdbd436668cf7ed2d3ef239ad6c97cad8a3783c303"
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
