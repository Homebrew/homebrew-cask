cask "comet" do
  arch arm: "arm64", intel: "x64"
  update_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "157.0.8103.366"
  sha256 :no_check

  url "https://www.perplexity.ai/rest/browser/download?channel=stable&platform=mac_#{arch}"
  name "Comet"
  desc "Web browser with integrated AI assistant"
  homepage "https://www.perplexity.ai/comet"

  livecheck do
    url "https://www.perplexity.ai/rest/browser/update2", post_json: {
      request: {
        protocol: "4.0",
        arch:     update_arch,
        os:       { platform: "Mac OS X", arch: update_arch, version: "13.0" },
        apps:     [{ appid: "ai.perplexity.comet", version: "0.0.0.0", updatechecks: [{}] }],
      },
    }
    regex(/"nextversion"\s*:\s*"(\d+(?:\.\d+){3})"/i)
    strategy :page_match
  end

  auto_updates true
  depends_on macos: :ventura

  app "Comet.app"

  uninstall launchctl: "ai.perplexity.CometUpdater.wake"

  zap trash: [
    "/Library/Logs/DiagnosticReports/CometUpdater_*.diag",
    "~/Library/Application Support/ai.perplexity.comet",
    "~/Library/Application Support/Comet",
    "~/Library/Application Support/CrashReporter/CometUpdater_*.plist",
    "~/Library/Application Support/Perplexity/CometUpdater",
    "~/Library/Caches/ai.perplexity.comet",
    "~/Library/Caches/ai.perplexity.CometUpdater",
    "~/Library/Caches/Comet",
    "~/Library/HTTPStorages/ai.perplexity.CometUpdater",
    "~/Library/HTTPStorages/ai.perplexity.CometUpdater.binarycookies",
    "~/Library/Logs/DiagnosticReports/CometUpdater-*.ips",
    "~/Library/Preferences/ai.perplexity.comet.plist",
    "~/Library/Saved Application State/ai.perplexity.comet.savedState",
    "~/Library/WebKit/ai.perplexity.comet",
  ]
end
