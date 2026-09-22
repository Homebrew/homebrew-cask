cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.87.2,01M354DN1H37SWZ87HKWQV9K0T"
    sha256 "d8b4a2a3d6305bcd5b321c722055cd16d0dd08cf9f040a94b62668825d7d2645"
  end
  on_intel do
    version "0.87.2,01M354E75K7KCZVTE45B2YE404"
    sha256 "1822ceb1736c2e301864a78f2c8472c9131f35f4e3161b9c699ec7501c39e065"
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
