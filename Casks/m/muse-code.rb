cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.3-R5018.1"
  sha256 arm:          "4b6e018667a7a4f98c417b3656e524d7f3bef240873f06bb8fba35d06bb1ddb7",
         intel:        "20e9da3a02e8358bfddc7c2b0856e4331b6f23eb12deb88f125254226fb28305",
         arm64_linux:  "6426c76a0081f20d60f6cad03308a147d79ce45758f1a89fd2713253cf475497",
         x86_64_linux: "e671790882bc88d65edb4ae0f713becf378ebf91011034ab75abebe3592dde4f"

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
