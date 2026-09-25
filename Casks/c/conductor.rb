cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.87.5,01M3CYXACYD6A2W445QR1BARW2"
    sha256 "b92406788edb8abecbcfeeeb51e01ffe6f70e62e4ae83f295e919a71a8d7b642"
  end
  on_intel do
    version "0.87.5,01M3CYX2Z8RHTSZ2BACCZTRZDJ"
    sha256 "7648971637b6c786803af7d7299cce8cdd4fe33ca98ab47919e2e9b85b60f0ec"
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
