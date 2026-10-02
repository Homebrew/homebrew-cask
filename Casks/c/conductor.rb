cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.90.0,01M3Z3QFVCKT3HHVYZ1JASCZHT"
    sha256 "b7348989ee39e747944eb5ccb07a7114c25620a70c40bdacdf58ca2b88dc7677"
  end
  on_intel do
    version "0.90.0,01M3Z3QQW3ENVN1MRN3G3BHB3G"
    sha256 "2adb6e021cae6b90bb01a43dd83ed645decd704a4d0d6c193f96fd382adcac36"
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
