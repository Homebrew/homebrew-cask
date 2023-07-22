cask "lm-studio" do
  version "0.1.8"
  sha256 "7006e37d08f019a7c1160436e6d55ee470637cd01aca1fecaa32b42073e6214a"

  url "https://s3.amazonaws.com/releases.lmstudio.ai/#{version}/LM+Studio-#{version}-arm64.dmg",
      verified: "s3.amazonaws.com/releases.lmstudio.ai/"
  name "lm-studio"
  desc "Discover, download, and run local LLMs"
  homepage "https://lmstudio.ai/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/LM\+Studio-(\d+(?:\.\d+)*?)-arm64\.dmg/i)
  end

  app "LM Studio.app"

  uninstall quit: [
    "ai.elementlabs.lmstudio",
    "ai.elementlabs.lmstudio.helper",
    "com.electron.reactive",
  ]

  zap trash: [
    "~/Library/Application Support/LM Studio",
    "~/Library/Logs/LM Studio",
    "~/Library/Preferences/ai.elementlabs.lmstudio.plist",
    "~/Library/Saved Application State/ai.elementlabs.lmstudio.savedState",
  ]
end
