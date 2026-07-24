cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.77.3,01KYAQH0ZBCPP4F9ZF5SVV9CR5"
    sha256 "b1f03f52088f277ece3570e1b2637f6a661ce2156814941a19a481c5a48548a8"
  end
  on_intel do
    version "0.77.3,01KYAQH5DDPRZ156XYQ59GBFV9"
    sha256 "a4661d11dcd83c2febc7625fedb861ec55c80f13d1bc127d4e53a7c3fe85c15e"
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
