cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.1.1-R2514.1"
  sha256 arm:          "7dfd75e1e2dd7c763e60b7e379f4146b8b2b10478a2830c8cdbb35ae9961881e",
         intel:        "103eed33aa1320aab0be5584e5177954f961663e517126ddd567859085aacd5d",
         arm64_linux:  "8836ca0f525f4d2bfd22e6891dbafa081dbdaa42bff71d090d85ad7ec8465d44",
         x86_64_linux: "47908f2e5b0ac5b0c0ba147a48b30a9e48c0aebea3c5cc891ad34d95425a4993"

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
