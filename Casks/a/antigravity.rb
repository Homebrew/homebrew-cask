cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "1.18.4,5780041996042240"
  sha256 arm:   "a0d5cc0a86b9dadb99cb9b350fd7f44ade4abfd936f4019f9b80d4566e307fbc",
         intel: "940012e1915c8f89ae8e0c34a0bec5b7ff1490cb0e8323fce971e7d5e7f3c892"

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
    "~/Library/Caches/com.google.antigravity",
    "~/Library/HTTPStorages/com.google.antigravity",
    "~/Library/Preferences/com.google.antigravity.plist",
    "~/Library/Saved Application State/com.google.Antigravity.savedState",
  ]
end
