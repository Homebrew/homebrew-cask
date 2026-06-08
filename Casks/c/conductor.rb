cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.62.2,01KTGEKWHCFZMCMD322ZBMQJK8"
    sha256 "ee0ec1986da5b00d4e5c95f8e863d9c4fab086205a9e9981a8c7ec0e8a269b18"
  end
  on_intel do
    version "0.62.2,01KTGEMAWKJWT0AWG1QB75Q7X4"
    sha256 "66e0f1493898c3b74a7c70b99d30745c6c6cd605d1d1882d836053a51ada3ed9"
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
