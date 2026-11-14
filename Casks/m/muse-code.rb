cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.20-R8619.1"
  sha256 arm:          "89964f68f7f020896fc75679dc2f3975e5e15a6efe8537d91512a1b45ffb37aa",
         intel:        "53f06739fb8b4afd80f67fd474d639b3f17cd3737566a2edff43c98b292866fc",
         arm64_linux:  "7159d6431fc5ff4c9dea32c62d0b771f5089d14389ec672ae903755bd39374dc",
         x86_64_linux: "3685b023d45a1a07c8c559da00088bdf59564920b13a85adad11e13ad6f4d181"

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
