cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.76.0,01KXNVDASHZ6HVC9RE75DJGNZK"
    sha256 "1c60214ed9c1fba6daba443d031f8f1288414b1e5226de6a3c99d13668147523"
  end
  on_intel do
    version "0.76.0,01KXNVDM9DAY9MGRSECA0PSCS2"
    sha256 "5686895343931a5a1f418e2685a90eabb83f118c576b60d58b2b33aaed84fb64"
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
