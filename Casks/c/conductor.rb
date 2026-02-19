cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.36.2,01KHT786JKT9Z6DXD9NYS21ZDV"
    sha256 "1ec9dac0b554bbffa3bc6447875dd0fb9ce6b9a566811163496d2fa2e9429d90"
  end
  on_intel do
    version "0.36.2,01KHT7FZSRAEZS0YKT197Y34R6"
    sha256 "38b6f69e33227acd4ebce866fcb8d5f54fac722df84b82e127a675cc1efbb663"
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
