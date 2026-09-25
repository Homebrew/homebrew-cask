cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.87.4,01M3AT1701S1GZBTP21HWRV40Z"
    sha256 "57ef4665697e67419ec4a66d6874127805e189218f59f3f44c931cb8b0af1c2a"
  end
  on_intel do
    version "0.87.4,01M3AT1CGHR0453NEJXNVZEHGP"
    sha256 "630ecc5c1810917f3b693670033d7c668f94d66f33e14ef52ba51e6fd2dcc510"
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
