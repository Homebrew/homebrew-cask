cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.77.1,01KY9AW0VTWBP7Y0M9A3G5GZ19"
    sha256 "ff6d43f954c45f216e007155be78def27776f6d315ff02707c553d8e3164e2bb"
  end
  on_intel do
    version "0.77.1,01KY9AW9VZPW71YX4VC0GJ86TA"
    sha256 "48daa04c4b9a16172880a133a9ea681bd4dff479ba9123c3b6cfc4cd8c4fd712"
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
