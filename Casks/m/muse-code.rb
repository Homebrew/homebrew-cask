cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.0.3-R2198.1"
  sha256 arm:          "4c0f960028b603174af7df7bd5051d8c35d6c1aa372a37d18bc770926a0577a7",
         intel:        "dbcee07bd234fc19805d5d6a358c591b79cc7d781311d10219f856d934843ac2",
         arm64_linux:  "4ffcf55f5eb0668643f30c5febd90d188b9a2da65858918444d31f6046940120",
         x86_64_linux: "75a68f98c437dfd17d264730c5bc72d57e5f1e18d10472a9f53261ffcc091352"

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
