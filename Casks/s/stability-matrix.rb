cask "stability-matrix" do
  version "2.17.0"
  sha256 "3301b7efae60ac96ccf51600f016a03a1e6ebc0843e2aea7f66b66d70d188565"

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
