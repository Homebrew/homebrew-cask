cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.3.0-R3057.1"
  sha256 arm:          "677d71f856e800061141dc13a2f5f67a068ca77637b2cfb1ebdde1f19c3b91ea",
         intel:        "8b34d5d2385ea751ebf2cb5a826a841a57365b6bd40882fa0677bad9de7318b2",
         arm64_linux:  "e2557a9e25ed28234c92a5cc53dfdc55d60ff9309b01ae577ad84b27efd6576d",
         x86_64_linux: "5187dfc9e5b460999acb5c2326b09190d307e3fe09127490eb5de39a8b200309"

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
