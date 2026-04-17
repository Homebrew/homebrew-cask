cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.48.4,01KPCE8N6CPZQ5J49C5X1Y6V2E"
    sha256 "14d60dcfec08a3378fb8b49b204611b5138cde1a2c5215f446ccb6455b6146fa"
  end
  on_intel do
    version "0.48.4,01KPCE82DPNN3J28TMZ1XAQVF9"
    sha256 "c225b8939abedaa98e5a01b359824928419ac10c5889ab4b5447a3f8d22ac433"
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
