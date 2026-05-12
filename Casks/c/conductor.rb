cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.52.1,01KR2V4RZKWK3B6H0AS3HE1VKQ"
    sha256 "88119829e4f61787d654ba128cb938c14a67818ac3ca9a621c8265094918436f"
  end
  on_intel do
    version "0.52.1,01KR2V5ETKB4HQYCK251GVP6K6"
    sha256 "a9f9ee1d59f1f356db3158ca1826574a3512a2022503aafb39f99807c0dbe2bf"
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
