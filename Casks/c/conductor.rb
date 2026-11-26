cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.101.2,01M8CB8WB848TETSBSB0ZWNKVY"
    sha256 "48630bd92b5dff746f5ee31c0bde8af0406c427567d04fb1a762794561a5103b"
  end
  on_intel do
    version "0.101.2,01M8CB8MJAWZ5H7572GA755YE1"
    sha256 "3c0394aa9e2b301cbefa3c46bbc295a0e652b7b5b6fed496d80cf55e47c05cf8"
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
