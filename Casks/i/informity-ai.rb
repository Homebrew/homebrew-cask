cask "informity-ai" do
  arch arm: "aarch64"

  version "0.13.3"
  sha256 arm: "6b860b60e87e0547e7bec3953042864acef0dfbb9eea70da0abea0bbfe5598eb"

  url "https://www.informity.ai/download/Informity_AI_#{version}_#{arch}.dmg"
  name "Informity AI"
  desc "Privacy-first local document intelligence"
  homepage "https://www.informity.ai"

  livecheck do
    url "https://github.com/informity/informity-ai"
    strategy :github_latest
  end

  app "Informity AI.app"

  zap trash: [
    "~/Library/Application Support/com.informity.ai",
    "~/.informity",
  ]
end
