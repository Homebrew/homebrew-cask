cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "25.3.9"
  sha256 arm:   "a3b2dd9e36041a9cec78f4367881dd0e270fe57e8ae6136d48c54927c8f8dd9c",
         intel: "dddc2b46f64424601cb6f5b91fdd8e6cc9a4fe8e781dfbdac7a2defc5a595e07"

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
