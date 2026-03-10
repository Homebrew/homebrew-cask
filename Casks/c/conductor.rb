cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.38.3,01KKCRMGVYRE384TZ7SY49D8S7"
    sha256 "8cec9ea0da80f6ec3900b739940e43db3e5a2f8956d14a7d7b4744d6434d876b"
  end
  on_intel do
    version "0.38.3,01KKCRR27R1VX7XV6V4GXPQBQ6"
    sha256 "b3f4f409d511990728467b3a1270c3c7b759b854824259e7fabd7d1add6dcdb1"
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
