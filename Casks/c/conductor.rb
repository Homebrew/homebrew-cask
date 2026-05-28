cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.59.1,01KSQX9RYRQXGRXA7DSQPQF3G4"
    sha256 "eaa10b77069e4c9a312f64bb413426e51b5dc575a5158de553762ac49f1b8e62"
  end
  on_intel do
    version "0.59.1,01KSQX9XT4HWAFF0Y4FV8J85HS"
    sha256 "2e2fbaebd62b5eeb0023eea8646789f5fa7672d5a9515ee9540d8928dc918a1a"
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
