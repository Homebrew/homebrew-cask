cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.67.2,01KVEKF1S2K49C1DJEQTF1M5KA"
    sha256 "bb93d36c9bd8ee30d267b4fd9553ddc713499468330086c666141d96149ac5ca"
  end
  on_intel do
    version "0.67.2,01KVEKEVVHNG8H0ZY2VKQHXS2M"
    sha256 "c74fcd98c3644a2121a6b88088143915d77327f77bf80052d8458527a9169b98"
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
