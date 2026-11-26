cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.101.1,01M8B826Z200H8KT253PKPVFV4"
    sha256 "544dc9f7a142ee94e1e6b3d9264e2a7d1caa31961ecd26dab01cafe33a244f31"
  end
  on_intel do
    version "0.101.1,01M8B820P2F9XFS68GV2JRWZHG"
    sha256 "c427817b228f62f3dbb3cfcceed5effe17e9077d518e7f6f11f427e516813505"
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
