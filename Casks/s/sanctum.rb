cask "sanctum" do
  arch arm: "aarch64", intel: "x64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "1.8.1"
  sha256 arm:   "51039e6380be8983649a10f5cca7e5803f52f53344fb21dfcfc91adee8781535",
         intel: "21b88233655ad8a00bacd6bae234925aaa9fb354147ae4982083825e8e42d870"

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
