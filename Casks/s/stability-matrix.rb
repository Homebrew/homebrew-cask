cask "stability-matrix" do
  version "2.15.5"
  sha256 "028de8a20978b4dca2c3135369d9b25cf64be227560d734cca7e26e9d71147fb"

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
