cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "26.1.4"
  sha256 arm:   "4f61f0d3199bc2aaee6ec468e5e72f20f4781fd240db94b22282c0fa9659f70a",
         intel: "191209da4e02ab65e35cba4fcdb4a1924fb73e31630a933c6a57e0c31803e512"

  url "https://github.com/nkallen/plasticity/releases/download/v#{version}/Plasticity-darwin-#{arch}-#{version}.zip"
  name "Plasticity"
  desc "3D modeling software for concept artists and designers"
  homepage "https://www.plasticity.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Plasticity.app"

  zap trash: [
    "~/Library/Application Support/Plasticity",
    "~/Library/Preferences/com.electron.plasticity.plist",
  ]
end
