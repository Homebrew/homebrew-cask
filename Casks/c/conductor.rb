cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.34.0,01KGQJYT9087RT8E1JYJ0320GP"
    sha256 "5880015ea8ce629b95767459d3381b3ebddc2bdcd890065d8bcb8551491c62f1"
  end
  on_intel do
    version "0.34.0,01KGQJQTA3WBW7BBF1E6WHDQ2W"
    sha256 "e2c99a3a2133cca76e19a4d3ab4edfebbfc4068acb829a232d32160b12ac26ee"
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
