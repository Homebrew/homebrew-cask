cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.91.1,01M53GCKWM7V863PMEXTYZQ613"
    sha256 "a6aef0b3ef40dd36e93c4183b91cccb85bfb7e4a59afbc825f3581e761e4d30b"
  end
  on_intel do
    version "0.91.1,01M53GCVXNQD5HJ0J5B8V8638W"
    sha256 "28e80672d475b6b5a00f7b25c2221c45947f68726fbec2c0fe7421952b18edaa"
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
