cask "sanctum" do
  arch arm: "aarch64", intel: "x64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "1.9.1"
  sha256 arm:   "6826eff46877af373f0127b9a9a6b5d5a091eca413a970e3f64335e9a6df6ade",
         intel: "f804209bc9f5d07587dadce675edb8238a047cad9e5d927d1a5a62cd234efc1c"

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
