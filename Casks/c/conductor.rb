cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.77.5,01KYNZQPPPSC7EAZT5AFPEN63W"
    sha256 "9687b4e49f78e00c9286c2dda69890aae62fc6ebabdc660e27809e9205189196"
  end
  on_intel do
    version "0.77.5,01KYNZQZZW6S3481KKDCMPMG88"
    sha256 "568ef3906a7d97a0a5b7572157f3764901ae10a518af17fc7311af4211cc0140"
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
