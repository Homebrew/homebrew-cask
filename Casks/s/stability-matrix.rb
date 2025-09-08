cask "stability-matrix" do
  version "2.15.0"
  sha256 "3555658b1c24b6e237ab5147f75f0d4494ce1f73be88fb8d42a108f2bd7c2bbd"

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
  depends_on macos: ">= :big_sur"

  app "Stability Matrix.app"

  zap trash: "~/Library/Application Support/StabilityMatrix"
end
