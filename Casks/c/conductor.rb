cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.98.0,01M7XY1QN8R2187XC5Y28SFF17"
    sha256 "d13865f40e9bae86c4fd5f638225782508a58425a90f4692164f7f460bad6105"
  end
  on_intel do
    version "0.98.0,01M7XY1BTS8476QYV1251SAKC0"
    sha256 "5b9112329cde18f6fda31b1c1a71f6cff186a77d150bc21cb5f0b42cb2f77c50"
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
        "~/Library/Logs/com.conductor.app",
        "~/Library/Preferences/com.conductor.app.plist",
        "~/Library/WebKit/com.conductor.app",
      ],
      rmdir: "~/.conductor"
end
