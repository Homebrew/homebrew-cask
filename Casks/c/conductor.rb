cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.49.0,01KPWDV4P97VNCR1P7SDDVN17A"
    sha256 "cbafbb4992c681e3140311f42812bef2d493be12f4a0f06c2f7fc5ce7f053b69"
  end
  on_intel do
    version "0.49.0,01KPWDTYD3YX5HX41MMA43AZ8M"
    sha256 "7df9fa524daa99ea407129d30fdd14f51ce7cf2bef25a8d10cdcd119ad5a9561"
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

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
