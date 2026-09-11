cask "stability-matrix" do
  version "2.16.3"
  sha256 "42b3a15e4fa8666c22fe95822a46cd0bb2562eb67cede218d19dd51b7b0a545e"

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
