cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.96.0,01M7R10VYFE5XGNJ7YMST56JCG"
    sha256 "3a25e2347827f7c2dc237d4a6f1ff1827a19dafa7720b9bd6198b0e4a6e84ef4"
  end
  on_intel do
    version "0.96.0,01M7R104YVDAP8VGBZSA61JMH3"
    sha256 "c44d9d2dcb29d97578a33363a8d17f4930ac0e40819503fc38a32d491906e425"
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
  depends_on macos: :ventura

  app "Conductor.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.conductor.app.sfl*",
        "~/Library/Application Support/com.conductor.app",
        "~/Library/Caches/com.conductor.app",
        "~/Library/Preferences/com.conductor.app.plist",
        "~/Library/WebKit/com.conductor.app",
      ],
      rmdir: "~/.conductor"
end
