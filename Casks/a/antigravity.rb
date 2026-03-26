cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "1.21.6,5723021441368064"
  sha256 arm:   "1b5b2e537813ecd7e916ac856fa2c7e005d586a1aee61abb3e00f8ba346a3f97",
         intel: "caf37b4209b97a940e316a000ae494c85af0c45e9f95a555f60b4854ff2c5656"

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
