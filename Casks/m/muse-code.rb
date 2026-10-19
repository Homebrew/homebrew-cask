cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.11-R6667.1"
  sha256 arm:          "6c04ce1719844685153ef6f04b98113cb61b942d97f0a8b0bfb3932c343984d9",
         intel:        "c673915c7e9fa738e4e2314530e35b4a255dabe14dac764f5929d27b828ed22a",
         arm64_linux:  "b1ce49b4d988a1d6b1d76994d6c7a0eae912c8ed2c1cf67ac89434c017c8232e",
         x86_64_linux: "6fda12a6a4f236528dafa707384cf6395fe859b1438ef77c7be26ed9d7976839"

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
