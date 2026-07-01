cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.71.0,01KWFC5G60XYAC6DMM1582FJX9"
    sha256 "66f6af45127a9a134a440af8c411a7e3a7f5ea7660994de02510c5496adec5bc"
  end
  on_intel do
    version "0.71.0,01KWFC58KJTKG2K3VN35TRQDSZ"
    sha256 "4e8143af5cf519a3a69caeedd7782503ff0c6f994812a21f7206881e58548486"
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
