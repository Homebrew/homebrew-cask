cask "sanctum" do
  arch arm: "aarch64", intel: "x64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "1.8.0"
  sha256 arm:   "75adcc543fb7bc9cf72c505c6e2aa69780fe1ee00ba26b368e9463888f5688ce",
         intel: "8fd9813da980404c30d48bbfe03838d5bdff29206d875d190cb6c5e4ebe041a7"

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
