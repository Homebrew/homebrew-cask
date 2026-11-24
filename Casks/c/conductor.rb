cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.99.1,01M85QQHRQHSTSHRC3FX366MWC"
    sha256 "49a1ee9ceca75cb81a3c18e723e4191c6cb740e5df10e51cbb3d8b8234e4c075"
  end
  on_intel do
    version "0.99.1,01M85QQR2XWAM9B5S2JH9E53K3"
    sha256 "3ec57549e0f73dade3761a75058e7b96c168ab2ded050f2ce85189c16fa9ebda"
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
