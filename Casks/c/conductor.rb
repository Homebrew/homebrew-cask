cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.45.0,01KN5SA0PHMJHQAB7XB4VSPD0B"
    sha256 "23b4128e801b2f2e42544237f2ed8e86e2728298512ec723e308a3589edaf970"
  end
  on_intel do
    version "0.45.0,01KN5SAHY3E420N2PR9E6RH4ZY"
    sha256 "9b35840af02406345dd27aa665b94ce1562e5422fc428bc8d6f36a4d7ff58a63"
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

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
