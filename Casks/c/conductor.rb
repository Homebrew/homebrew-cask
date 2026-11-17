cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.95.1,01M7NHQTWWKF04T9Y50VS4758E"
    sha256 "6c77b74fca73bca9cec2d9dd5e1a486eab72a53e2dac0bb40dd789b44e73f60c"
  end
  on_intel do
    version "0.95.1,01M7NHQBJ0FSFW3QRHC7WTTG6Q"
    sha256 "420ca0ce67f3686f34f119c21e4bade832064b809fa6f8f3b6277edf153b7c61"
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
