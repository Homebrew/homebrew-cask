cask "stability-matrix" do
  version "2.15.6"
  sha256 "b30ea7d7a7c62b30a3df02a2c7abcf900870e86b61cbbd6b7df2065e78fd7da4"

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
