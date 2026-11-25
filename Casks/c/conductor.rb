cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.100.0,01M883HBNFB4R6ZP7TGAZTX7J7"
    sha256 "4de76df81b2c6eca5232e5767300a66eaee6ac283a7b9dccc46e6e90f18aa0dd"
  end
  on_intel do
    version "0.100.0,01M883HQA43FJWB18FSNJJW3FS"
    sha256 "4e7af58cfd93a9c33af5df12748fbd71f312c59f617afda969971364310c86cc"
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
