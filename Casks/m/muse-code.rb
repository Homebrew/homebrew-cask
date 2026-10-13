cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.7-R6101.1"
  sha256 arm:          "87ff5a31b63e30b6ac04d3e8298285517e753c126fb6f3aee80accf28c4562f1",
         intel:        "6d766da6601a0aae8bd22294c0854970286e1b9ade3009f0d0289b7875a10c58",
         arm64_linux:  "48db3c7468cd4f401eff9b415fb7e0cdfe0351fb1730649ceae2a0f766e23b85",
         x86_64_linux: "36e3dac91f56c15572b95be55d70ee9fd9685cd9ab49f747bab4746c8d7c2518"

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
