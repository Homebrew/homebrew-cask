cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.83.1,01M14SDJVGHJYBTZHP488SBRD7"
    sha256 "0ec269732d038d9c5c4002721a39a9b5fa58009941b66638c22905cc415537de"
  end
  on_intel do
    version "0.83.1,01M14SDBNQYBT12S48PWCCP4C5"
    sha256 "be2ddd86ca192f29a696b217be52d6d4458c97054120ee07959f3b604fceffbf"
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
