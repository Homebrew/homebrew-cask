cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.29.4,01KESESG5KG6S1AC5CX224V5EB"
    sha256 "4758250741fcb11698326510bd32193a35707c29f9421bf35fa11596659ab023"
  end
  on_intel do
    version "0.29.4,01KESEPX5FPD1V8CCP7QMK6FNG"
    sha256 "580f85de7564cfa11d431b9a70a18e057299c657aee6cc163b49068989feba8e"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "cdn.crabnebula.app/asset/"
  name "Conductor"
  desc "Claude code parallelisation"
  homepage "https://conductor.build/"

  livecheck do
    url "https://cdn.crabnebula.app/update/melty/conductor/darwin-#{arch}/latest"
    regex(%r{cdn.crabnebula.app/asset/(.+)}i)
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
