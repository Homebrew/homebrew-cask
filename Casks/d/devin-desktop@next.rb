cask "devin-desktop@next" do
  arch arm: "arm64", intel: "x64"

  version "3.7.1003+next.6644e399aa,6644e399aa579d80bc4b8184f7abac417cde76c4"
  sha256 arm:   "334a83dd00a1c8f6745a2717fbe798bd4a0773193e6d5f1c35aaa5b0e2413cbf",
         intel: "159fee95e792ab9ec4ab9389fabcb39054c21e4e2dfaa897ebb4e42aea30464e"

  url "https://windsurf-stable.codeiumdata.com/darwin-#{arch}-dmg/next/#{version.csv.second}/Devin-darwin-#{arch}-#{version.csv.first}.dmg",
      verified: "windsurf-stable.codeiumdata.com/"
  name "Devin Desktop Next (Beta)"
  desc "Agentic IDE with AI agent command center"
  homepage "https://codeium.com/windsurf/download-next"

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
