cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "26.1.0"
  sha256 arm:   "940dd5a72130ee4a356f1da7ffcb00d3b4880b96cefc636904cd8f58e92e6bff",
         intel: "13c3b7070c34d9db051c6db33f3a900a79db74a2581ced055b9a6e42dec65d80"

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
