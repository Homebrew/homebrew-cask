cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.34.2,01KH4DSVE6736G9HB2JHJQS1D2"
    sha256 "7b356c04abf2899bca379f2be56bd0ccb9833e8b3a2621e06161bcccdc570764"
  end
  on_intel do
    version "0.34.2,01KH4DT6YTC89T75XZRB0EVQK0"
    sha256 "e12b4fe86b0e1dbaee001f39dddb3a6b13318574a4e043b8552c537c52b85361"
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
