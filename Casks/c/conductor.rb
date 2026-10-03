cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.90.1,01M3Z9ZJ0YEHE1W3R621JXE953"
    sha256 "10e6c34f9a76934365ce9294b5effae2dd75ee1b013d269722bcc19e7abe94d5"
  end
  on_intel do
    version "0.90.1,01M3Z9ZPQ3M4N8R6QCBWQGR7J5"
    sha256 "3574bf45ccb1df7675dbb0b49de0cd6152831f1a2d84e9436daef13a62a2c083"
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
  ]
end
