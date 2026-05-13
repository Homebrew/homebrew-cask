cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.52.3,01KRF89M29FCSB140YBASSR8AR"
    sha256 "b3e83e5662555f0d655cd84c5f8bb98491042f4decee0de6ac223d251d08f03e"
  end
  on_intel do
    version "0.52.3,01KRF891F0KK7ZZ3THCCZR27MF"
    sha256 "9ec3cf7e6e09f34fbbe99e4145d1ed857e87e6f664f4b18efab0e2ebe891a9b1"
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
