cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.25-R9361.1"
  sha256 arm:          "d8faeec8b3a2507125d97f1a79ae18781d254e8cd376f26531587fb6e043c27d",
         intel:        "fb02e24b14958ead92325550f4dfef914bb4c496b6c504588e90c1e56fb166b0",
         arm64_linux:  "8fe089115ef137879fca46986d55edf18d5d3ab9cfdb6441c67e9d1807b4108a",
         x86_64_linux: "c1b728fb9732503c5e1869e3ad2f2c9bdb5b2638fb4cf398d6e2c46aa6d8f94a"

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
