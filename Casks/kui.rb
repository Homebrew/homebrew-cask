cask "kui" do
  version "9.3.3"
  sha256 "35bf6d9ed1ab5626281ec228e428680592f4b8f0b45f8eb1972f0ba0776735ac"

  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2",
      verified: "github.com/IBM/kui/"
  name "Kui"
  desc "Hybrid command-line/UI development experience for cloud-native development"
  homepage "https://kui.tools/"

  livecheck do
    url :url
    strategy :git
  end

  app "Kui-darwin-x64/Kui.app"
  binary "#{appdir}/Kui.app/Contents/Resources/kubectl-kui"
end
