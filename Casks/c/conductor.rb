cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.46.0,01KNGA48N3XGDM3WR7EGTN75C6"
    sha256 "53dcd8f9cb8f807dfeac902d7729a66ebb6a113700e7c6c50cafb8c94651fa9e"
  end
  on_intel do
    version "0.46.0,01KNGA4YKACDKNNBKB4S10YDZG"
    sha256 "1a7d787665e7d5aafe09fc3b33f48c3fe78ebf56f0244cb608e5b0ca5c67db16"
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
