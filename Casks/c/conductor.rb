cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.61.2,01KT32PPY0RJAEW0X61NN5FN84"
    sha256 "6e0e9d82607b69478eed35427b95b647b78b8d12f95f53818238b48dac046359"
  end
  on_intel do
    version "0.61.2,01KT32PKBT45NAFH8N72Y7WATJ"
    sha256 "8a461e2129a6bb854aa09226bbcfbabe3ed50d53602e99a7edad581d03728310"
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
