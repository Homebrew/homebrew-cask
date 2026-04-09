cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.46.1,01KNR0FY8M37JJGDZ5EWB91WHK"
    sha256 "a8826c8b2f4bcfa318486907e4f2626c9d6c248acf02f4ed40ab0cf3f24f9a2f"
  end
  on_intel do
    version "0.46.1,01KNR0G3E5FDMYJFQSATJ5ZJWJ"
    sha256 "1ee30d1e9170c74dde5516f4234ea963ea058dd697bf056d4d10faa890186197"
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
