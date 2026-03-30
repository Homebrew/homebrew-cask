cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.89.1"
  sha256 arm:   "80b661fc6a542eba3ae8801c785de9995a8ca27f1af42e0a1830f1596496bb13",
         intel: "cad05e39733a39f365868afdd934ba145250f90138b4a6bd079f734932baed64"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
