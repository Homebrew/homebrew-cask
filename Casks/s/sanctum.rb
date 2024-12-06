cask "sanctum" do
  arch arm: "aarch64", intel: "x64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "1.9.0"
  sha256 arm:   "0738675c7dc1f58719f58c36195eb2444bb4f195303adc5559ba706eecbd96c1",
         intel: "768d116c331f95ab75b00db00157cd019c59f6dda7f1a704bd7afd841fdebfda"

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
