cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.28.5,01KDSC7V6RJBE61NDBQYYNYYMK"
    sha256 "9080c06b1fd3748ca15361c6b5a8bcfc7d87e2f57cccf62d660fb6ee7be3ca1e"
  end
  on_intel do
    version "0.28.5,01KDSC8H1E2M6VMQ444AXMDJRB"
    sha256 "1ad2d8d4d575ee87f5cb17887143b16a6c3c56dbbec3f475b730e85878afdab4"
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
