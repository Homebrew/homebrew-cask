cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.0.1-R1848.1"
  sha256 arm:          "eb7ccdb6cf321b600de8aa65ad700849357db7608d73b60b6b3efc25fd32d9bb",
         intel:        "d5d48adc3a70e0d3d74ce7fa44d531cdf8fab23b36fda0cafa179221d5e0809b",
         arm64_linux:  "6ed52660f33254f78dc60c8b96cec383a4d7e5b6366e6ec5a0f6256c95f41ff2",
         x86_64_linux: "2ddccb4d2377e607c49575ac4f634196bd13a302c594589ea36597fced367048"

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
