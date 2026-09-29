cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.1-R4503.1"
  sha256 arm:          "1b9ada5f943cd44d5aacd2380be17203798a953e993589f8654352cf524a00c7",
         intel:        "04d5af2271cce559454f62ce22cb66438afdb7c9d96f58b75f3d36668f47183d",
         arm64_linux:  "a6d46239975adac282aa829d2a5bd1cd3119334c18ecfa776d4377daebddb595",
         x86_64_linux: "8b53c9cdbc025bc2d9068bc7016e2c1e51c3a0c608821da17528ad23be900a12"

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
