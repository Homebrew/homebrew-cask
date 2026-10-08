cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.4-R5419.1"
  sha256 arm:          "7f708414207d1665858baa6ef2ef0f5c69c727f5b3c00243fa398c2f5d5b5cc0",
         intel:        "d88fc9da14cff06a5f40e209e8c3502451329d8d5143c147bb7b7609204d1aa2",
         arm64_linux:  "bc1196793927baaf07535e9199d053ea3754b3bc658da1fec13d37f089cccd11",
         x86_64_linux: "cfc9d068441ff46036ad6bbf30dd794043b25b7efb69648c92c022ccf65f7d19"

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
