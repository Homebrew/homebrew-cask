cask "devin-desktop@next" do
  arch arm: "arm64", intel: "x64"

  version "3.12.1032+next.1126aba4a5,1126aba4a596c3bb4c3a3b10f472e10448be1fd8"
  sha256 arm:   "1ed18196b888c1fa3a1a95f4018a322cde41143259e399e63104d37e03b2ff62",
         intel: "dc21a916c1ec8dd2c4b2bcbc2740532b7ddf5eb9a1288282707cc43f8bc31d5c"

  url "https://windsurf-stable.codeiumdata.com/darwin-#{arch}-dmg/next/#{version.csv.second}/Devin-darwin-#{arch}-#{version.csv.first}.dmg"
  name "Devin Desktop Next (Beta)"
  desc "Agentic IDE with AI agent command center"
  homepage "https://devin.ai/download?next=true", browsed: "2026-09-07"

  livecheck do
    url "https://windsurf-next.codeium.com/api/update/darwin-#{arch}-dmg/next/latest"
    strategy :json do |json|
      version = json["windsurfVersion"]
      hash = json["version"]
      next if version.blank? || hash.blank?

      "#{version},#{hash}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Devin - Next.app"
  binary "#{appdir}/Devin - Next.app/Contents/Resources/app/bin/devin-desktop-next"

  uninstall launchctl: "com.exafunction.windsurfNext.ShipIt",
            quit:      "com.exafunction.windsurfNext"

  zap trash: [
        "~/.devin-next",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.exafunction.windsurfnext.sfl*",
        "~/Library/Application Support/Devin - Next",
        "~/Library/Application Support/Devin Next",
        "~/Library/Caches/com.exafunction.windsurfNext",
        "~/Library/Caches/com.exafunction.windsurfNext.ShipIt",
        "~/Library/HTTPStorages/com.exafunction.windsurfNext",
        "~/Library/Preferences/com.exafunction.windsurfNext.plist",
      ],
      rmdir: "~/.codeium/windsurf-next"
end
