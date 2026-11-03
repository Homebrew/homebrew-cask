cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.92.1,01M6HGWNW93NVZ31ZCM6ZT38VA"
    sha256 "7b8b646f1cfca615494db4d8149e8f596a929d26826a411bc51ebf829a8430b2"
  end
  on_intel do
    version "0.92.1,01M6HGWZR1K9WHD8X1PZVNAP3M"
    sha256 "107b80c8641302b11da11d42a5a75d4d721dd59683f7b84b7850ba8f675dc3f6"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}"
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
      ],
      rmdir: "~/.conductor"
end
