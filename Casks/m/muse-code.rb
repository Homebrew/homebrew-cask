cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.15-R8339.1"
  sha256 arm:          "76665eda8ff06b586a02642ae981d68b5d23a5263fabbe4aded0b8c90d1e92c9",
         intel:        "5f7d825a8d62a36f0a432753782d24a30a2c2bef53d760059a857c148a80fc3a",
         arm64_linux:  "d0760247116f75f3cbd15e85f978b0e010d4846161d110df871bcaf346bbf60e",
         x86_64_linux: "abe0a72878c62b570c6eed6c17c5fc3c520a990ecf040511741c00092312a3d5"

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
