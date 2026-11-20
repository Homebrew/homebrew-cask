cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.97.0,01M7VAFDHKP1Q5TY01PGDT8GQS"
    sha256 "c91fe000615546e4f31d756893523391251e4196734df3ef1ee93e8295c9c4d0"
  end
  on_intel do
    version "0.97.0,01M7VAFT8J5E4BES7CZ7D78WCK"
    sha256 "5bb400cd26361a32b2a411d5d2c1a1e2e7c424d4c802a46d0eed5d61cc5e3633"
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
