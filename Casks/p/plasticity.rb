cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "26.1.2"
  sha256 arm:   "9a34c58b3aff6db9a37ed4dab950f1dc0f849bd89bab3f38430d30bfe9ed5cc0",
         intel: "4b4efd2ce11be96089ce0369fc3635bf6acb65ade69e9142d11941472f523209"

  url "https://github.com/nkallen/plasticity/releases/download/v#{version}/Plasticity-darwin-#{arch}-#{version}.zip",
      verified: "github.com/nkallen/plasticity/"
  name "Plasticity"
  desc "3D modeling software for concept artists and designers"
  homepage "https://www.plasticity.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Plasticity.app"

  zap trash: [
    "~/Library/Application Support/Plasticity",
    "~/Library/Preferences/com.electron.plasticity.plist",
  ]
end
