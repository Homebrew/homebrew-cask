cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "1.23.2,4781536860569600"
  sha256 arm:   "caa35ad282741cc9350fb6234e9b86aef54cd4d2f75715a21ef27180182aa50f",
         intel: "4ec781e8e94ec714c307a06c4ce925bf761dd0e610ba45e173747fbbe3423ad6"

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
