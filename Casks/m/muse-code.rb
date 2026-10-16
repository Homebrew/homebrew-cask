cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.10-R6427.1"
  sha256 arm:          "11cc1ae887b4975bbbe1de7358ee9260a612444df9ce4dbfffa1dd785826dbcf",
         intel:        "2b25a4f046eef5ef1cd369134df36cab7c63a781d5187906a6056f0b4085dea2",
         arm64_linux:  "2e5afa5e8560c1565185249af2d27b3e97aaf351d3d32275b8e410be702dce35",
         x86_64_linux: "decefc0fb33c48ee43419c3e72ac2dbc781743868611074c7292807f5960dfcf"

  on_macos do
    depends_on macos: :monterey
  end

  url "https://lookaside.facebook.com/lookaside/muse/download/?channel=muse&version=#{version}&file=muse-#{arch}-#{os}"
  name "Muse Code"
  desc "Interactive terminal coding agent"
  homepage "https://dev.meta.ai/"

  livecheck do
    url "https://api.meta.ai/muse-code/channels/muse-stable"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "muse-#{arch}-#{os}", target: "muse"

  zap trash: [
    "~/.config/muse",
    "~/.local/share/muse",
  ]
end
