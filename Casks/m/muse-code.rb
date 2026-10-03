cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.2-R4684.1"
  sha256 arm:          "e9987ef4267a648dc1931c2836a23f6f16f8b4417368b126a810bece2abd308d",
         intel:        "83b2228e40c58ac3798095936db7ed787b56fc8fd0081209697b8c54fd66ce86",
         arm64_linux:  "fa6974c23307a0d5db91367549e41505a5e7b55dcd66c672eb2dd89c1a125ad6",
         x86_64_linux: "dfb3096c91f4767c4d98006460800b7ba906a0b1a408280a926a8dc19a1af64f"

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
