cask "stability-matrix" do
  version "2.15.8"
  sha256 "46b98c2e1e14330564597c17ffbe8a9e52d8c007245ee0d873c60c8acc188ec8"

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
