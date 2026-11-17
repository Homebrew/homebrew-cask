cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.95.0,01M7KFRT970R5HQK402GH1XNEA"
    sha256 "df01da517408054ac49a16db68a16ffdfb7875cbba010d61359c709b954641da"
  end
  on_intel do
    version "0.95.0,01M7KFT0VEK2A1DNKDEZC09Y0Q"
    sha256 "e54e36cca5b5d72b3342abd0277869c18bd4f9647be5990cdefb8aada280f528"
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
