cask "stability-matrix" do
  version "2.13.4"
  sha256 "65811e0fbb961cec0b74d3026eb8662f419abbba96ae7d665be610503d2afa96"

  url "https://github.com/LykosAI/StabilityMatrix/releases/download/v#{version}/StabilityMatrix-macos-arm64.dmg"
  name "Stability Matrix"
  desc "Multi-Platform Package Manager and Inference UI for Stable Diffusion"
  homepage "https://github.com/LykosAI/StabilityMatrix"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Stability Matrix.app"

  zap trash: "~/Library/Application Support/StabilityMatrix"
end
