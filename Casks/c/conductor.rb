cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.92.0,01M5QVXH22XKFJMKCK0B5440ZZ"
    sha256 "3563b5f0fa205b4a4e5c88bce8e1d2a7f7730772f07f1afdb64f6001b2a52668"
  end
  on_intel do
    version "0.92.0,01M5QVXP1TJV9WJFCEDXFNPC0J"
    sha256 "186102a572d44ffd3d6e48972021e7a713bfab3a22494ddd7287885f217694ae"
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
      ],
      rmdir: "~/.conductor"
end
