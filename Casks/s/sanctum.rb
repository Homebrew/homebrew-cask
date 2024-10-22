cask "sanctum" do
  arch arm: "aarch64", intel: "x64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "1.8.2"
  sha256 arm:   "06f1cf9b0bc721d24bf593ce5ca433acfaa273c93e885ba210528bd87bd9b254",
         intel: "5ab92aaf7d0073368004371d8a6d4bcf736c8c4b100f86e9af3711cf12be0d1f"

  url "https://sanctum.ai/darwin-#{folder}/Sanctum_#{version}_#{arch}.dmg",
      user_agent: :fake
  name "Sanctum"
  desc "Run LLMs locally"
  homepage "https://sanctum.ai/"

  livecheck do
    url :homepage
    regex(/href=.*?Sanctum[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Sanctum.app"

  zap trash: [
    "~/Library/Application Support/ai.sanctum.chat",
    "~/Library/Caches/ai.sanctum.chat",
    "~/Library/Logs/ai.sanctum.chat",
    "~/Library/Saved Application State/ai.sanctum.chat.savedState",
    "~/Library/WebKit/ai.sanctum.chat",
  ]
end
