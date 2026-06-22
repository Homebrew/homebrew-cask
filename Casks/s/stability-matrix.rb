cask "stability-matrix" do
  version "2.16.1"
  sha256 "2388391f77037dd70d064edef42c07c36ff98b3a7b349f2226fdefa330a9e069"

  url "https://github.com/LykosAI/StabilityMatrix/releases/download/v#{version}/StabilityMatrix-macos-arm64.dmg"
  name "Stability Matrix"
  desc "Package manager and inference UI for Stable Diffusion"
  homepage "https://github.com/LykosAI/StabilityMatrix"

  livecheck do
    url "https://cdn.lykos.ai/update-v3.json"
    strategy :json do |json|
      json.dig("updates", "stable", "macos-arm64", "version")
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Stability Matrix.app"

  zap trash: "~/Library/Application Support/StabilityMatrix"
end
