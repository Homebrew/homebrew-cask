cask "stability-matrix" do
  version "2.15.7"
  sha256 "89bce412c7d774ce62ee5e41c6aa8b1c419c67aeed0798d5fe264cd67fc2e3c1"

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
  depends_on macos: ">= :monterey"

  app "Stability Matrix.app"

  zap trash: "~/Library/Application Support/StabilityMatrix"
end
