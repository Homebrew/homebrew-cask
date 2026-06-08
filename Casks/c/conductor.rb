cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.63.0,01KTMJ78QB5ZYW87CJN3YHFN18"
    sha256 "2c3cce5ae4958429b4f22f762148c9fd40a2e5228335c16065b18e5907390596"
  end
  on_intel do
    version "0.63.0,01KTMJ6W8Z347AXNHZM0G7HBER"
    sha256 "c62ce1c701f6ec3f3fdd07a093555a581122af0ea016683576b16b36a056606a"
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
