cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.101.0,01M8APXAF61CX572W0045R2C9B"
    sha256 "42cef1d76c21a61021137e5a11bba3e2fe1c0357989bbd5019fa1759c14b850d"
  end
  on_intel do
    version "0.101.0,01M8APX4X5HK3A8PKTZT6TYHZ5"
    sha256 "48392adc0be43b267df3d98aa5c08224ba0262eac49d555a2fecd0c3b196f46e"
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
