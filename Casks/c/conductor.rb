cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.56.1,01KSB28ZYH0RP5WDPWC5XRATJB"
    sha256 "274ba4ee4f351a6d47a1556851f84d42acfd896b509bb1782f114096679be454"
  end
  on_intel do
    version "0.56.1,01KSB29450SQR1AWEHA9E56FYW"
    sha256 "b675cb91a8d4c0d86c4c4212e8f80e8a2f74b1d43cfa57113f74588bd37a1c06"
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
