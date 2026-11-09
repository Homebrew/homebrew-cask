cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.14-R7309.1"
  sha256 arm:          "1c96114408acbeade9a8fb79e3b4425e5b64d50425938568aef01bdc04ce2e03",
         intel:        "6da5a12d3298afba45afec929fc385b516084ed28e9504ae29354dbcdfc4089d",
         arm64_linux:  "3dc39b8fa26f9963cc2038f2966c0932ed5a39f0f9efb39cc0266a261cbbcf76",
         x86_64_linux: "0809aac7cb58d18f5022b6d05e02aa1974683c0ec430e5f04d25b60ed17de2da"

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
