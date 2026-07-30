cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.78.1,01KYTD264MRDEVTXRNQV29Z37G"
    sha256 "1a3a7e5258f1154d3033e0f1354098d335fbb3fc03d655af4e4f0141183f0258"
  end
  on_intel do
    version "0.78.1,01KYTD1ZPM9W6B9KRRNGBNWFJ2"
    sha256 "e20fe0647974f399bdeaade71f09decd908daac89f47cb47c3d6c5203204f8f6"
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
