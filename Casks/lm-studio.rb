cask "lm-studio" do
  version "0.1.8"
  sha256 "7006e37d08f019a7c1160436e6d55ee470637cd01aca1fecaa32b42073e6214a"

  url "https://s3.amazonaws.com/releases.lmstudio.ai/#{version}/LM+Studio-darwin-arm64-#{version}.zip",
      verified: "s3.amazonaws.com/releases.lmstudio.ai/"
  name "LM Studio"
  desc "Discover, download, and run local LLMs"
  homepage "https://lmstudio.ai/"

  livecheck do
    url "https://s3.amazonaws.com/releases.lmstudio.ai/update.json"
    regex(/LM\+Studio[._-]darwin[._-]arm64[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on arch: :arm64

  app "LM Studio.app"

  uninstall quit: [
    "ai.elementlabs.lmstudio",
    "ai.elementlabs.lmstudio.helper",
  ]

  zap trash: [
    "~/Library/Application Support/LM Studio",
    "~/Library/Logs/LM Studio",
    "~/Library/Preferences/ai.elementlabs.lmstudio.plist",
    "~/Library/Saved Application State/ai.elementlabs.lmstudio.savedState",
  ]
end
