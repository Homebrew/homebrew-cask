cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.46.3,01KNYZ0BV7HE0G6KMYH0570YZS"
    sha256 "297d336c50a79c3ad2080c966e31eadf234410d2ff0b96705ce9e2834e1b907f"
  end
  on_intel do
    version "0.46.3,01KNYZ02CQ0WXYFR8GJAQVEF1M"
    sha256 "1b17b84e63136c600671a372b8b646b3981bd26c6ce5a1dc312b55500ecde583"
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

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
