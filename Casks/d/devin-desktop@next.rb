cask "devin-desktop@next" do
  arch arm: "arm64", intel: "x64"

  version "3.11.1228+next.053434014d,053434014dbdb7a662a14e38752946a0dafb97f2"
  sha256 arm:   "d4127c46f0313230108ee59d8f203180f5b9ebb42d791fa9cc9c58fe4febc467",
         intel: "ae534eb5bab89fef42a741545a71f392dcfc45238a3cc14524079ae2b146fa73"

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
