cask "devin-desktop@next" do
  arch arm: "arm64", intel: "x64"

  version "3.10.1027+next.bcbe88c734,bcbe88c734e882c54479decce8c34eabc9f8f8b0"
  sha256 arm:   "074d6eb1c4c6ea8aaac676bc1d9da01d96cc99ece94c4f2a2408f6882d05310d",
         intel: "ffeda56ec2e88ff963ada2f02aff79a0c371008e451c99d93adf661daaa86878"

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
