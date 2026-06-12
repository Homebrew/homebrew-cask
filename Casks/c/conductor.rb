cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.65.0,01KTYCSTVDV0MZGS86ARM30W4E"
    sha256 "a13594bf1b690b390dc2c9a95ae8b1ce8d0da4c22793150064a7817a13abf8df"
  end
  on_intel do
    version "0.65.0,01KTYCSZ6GHQ4J6CBGGA8VN5W0"
    sha256 "5270f622dee24d5e48e08ccd48fd1f0c4cd24d44a2d72716104baff8cabeb4dd"
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
