cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.72.0,01KWMS15GBSTND3DRNXVK0MX9F"
    sha256 "bc3969af1ab2622f67800a727053dbbb99379204c3383d1aa014659eba01979a"
  end
  on_intel do
    version "0.72.0,01KWMS0YKXTC06ZBPFAY2H2GXT"
    sha256 "ff8faaaf91ebb5e5559610d485387056340717ceba67586f68d264cd1c5160b9"
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
