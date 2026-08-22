cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.82.5,01M0KCZ8Z05KFNJ15T9N8YG5RC"
    sha256 "2f31024b48a7d21d257c7fc3976ab4b1f8a8a3d28a6544b75efff2da91b4d641"
  end
  on_intel do
    version "0.82.5,01M0KCYYETAE6F8NEHZM53XCAG"
    sha256 "1db66583ce5c92f183b0ba3a9f36bb52aac0a3e61d6be3c3cd934307ad5d864a"
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
