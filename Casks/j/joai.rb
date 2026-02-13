cask "joai" do
  version "0.19.0"

  on_arm do
    sha256 "b21f3203d2f4d0686b1eaadff98e96de7e80a3b2d4b05d2c0c31a1a441fa94c7"

    url "https://github.com/JoAiHQ/releases/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end
  on_intel do
    sha256 "dd41ad86b67916f3f6ccfbea86f1c4afc49d716bb3434215383621a99d0d9d04"

    url "https://github.com/JoAiHQ/releases/releases/download/v#{version}/JoAi_x64.app.tar.gz"
  end

  name "JoAi"
  desc "AI agents for the MultiversX blockchain"
  homepage "https://joai.ai/"

  auto_updates true

  app "JoAi.app"

  zap trash: [
    "~/.joai-cli",
    "~/Library/Application Support/ai.joai.app",
    "~/Library/Caches/ai.joai.app",
    "~/Library/Preferences/ai.joai.app.plist",
  ]
end
