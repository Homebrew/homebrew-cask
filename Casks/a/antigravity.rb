cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "1.20.5,5474622945755136"
  sha256 arm:   "440289e5f20ad154c30ccdcf5bf61e6136f63778c2dc4cd1edb87e7734af3447",
         intel: "c099b4c868d1f101c4fc178e5d887bd5bed559307ff0176a635adbc0e0e965f8"

  url "https://edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/stable/#{version.csv.first}-#{version.csv.second}/darwin-#{arch}/Antigravity.dmg",
      verified: "edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/"
  name "Google Antigravity"
  desc "AI Coding Agent IDE"
  homepage "https://antigravity.google/"

  livecheck do
    url "https://antigravity-auto-updater-974169037036.us-central1.run.app/api/update/darwin#{livecheck_arch}/stable/latest"
    regex(%r{/stable/([^/]+)/}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      match[1]&.tr("-", ",").to_s
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Antigravity.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  agy_shimscript = "#{staged_path}/agy.wrapper.sh"
  binary agy_shimscript, target: "agy"

  preflight do
    File.write agy_shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Antigravity.app/Contents/Resources/app/bin/antigravity' "$@"
    EOS
  end

  zap trash: [
    "~/.antigravity/",
    "~/Library/Application Support/Antigravity",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.antigravity.sfl*",
    "~/Library/Caches/com.google.antigravity",
    "~/Library/Caches/com.google.antigravity.ShipIt",
    "~/Library/HTTPStorages/com.google.antigravity",
    "~/Library/Preferences/com.google.antigravity.plist",
    "~/Library/Saved Application State/com.google.Antigravity.savedState",
  ]
end
