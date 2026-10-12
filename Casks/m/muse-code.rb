cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.6-R6000.1"
  sha256 arm:          "c713165a287d64afb8816f8351a240b457a23524f4ade06bca0e41dfde410460",
         intel:        "2a4ecde03c43bd81c01d7dbd978c894db940c5f6e235e3e3da503376bd0fb45f",
         arm64_linux:  "fdbb7f1a85d5fa0727253726785a940e86bdbb5f3885bb0ed182657781f5aa93",
         x86_64_linux: "82a495542965a5b6256f7acdb81693451c28640a419d5528ad8340ea93f36f6f"

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
