cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.69.1,01KVW4AMNRVYX18ZHZTX2WEQAM"
    sha256 "417d7ba0ba27853da3b4a757403144e38c1f3afed63f670a7c258d54a8da6aa6"
  end
  on_intel do
    version "0.69.1,01KVW4AS78E3S21C83MXZZ3Y91"
    sha256 "d54052315c558c0525a848c9607f8ec082a8c7cb3950e193fae428611649939c"
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
