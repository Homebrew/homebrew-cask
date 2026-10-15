cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.91.0,01M50CW3XF38FSVRGSC15D5M6C"
    sha256 "472e2180e9ab62ff1964e7d177850617ade1c6c37924d5917c0f37115baf0a31"
  end
  on_intel do
    version "0.91.0,01M50CWA6MT8F0GYDGKBKNJDPD"
    sha256 "ec1152663de9c1feb4091a48fe84ec3f8a3607e54a04542cb329f7c65ffae095"
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
