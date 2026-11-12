cask "devin-desktop@next" do
  arch arm: "arm64", intel: "x64"

  version "3.12.1057+next.96542e9307,96542e9307526cd734ad9cc1efa3d9bfb5d741da"
  sha256 arm:   "19dd1348fa21b5eb65548e946d263d81e4a9675f20c98fa26a80972a4f0bb35f",
         intel: "df26bfebe274142a9c14a28e5f8da1639cdc0280af8459c51eda2a581759eb8a"

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
