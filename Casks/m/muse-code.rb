cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.12-R6909.1"
  sha256 arm:          "7118b9ca2227a6ec1b90cc506f8abdd4a35d14d8ab6683c9164b075002a55fff",
         intel:        "3b3580e8552fddb56242bb7d5afc5f81044e02e88ea25b721427895b15ed59ba",
         arm64_linux:  "e488288a0bcb68d548cad1e03e3026b51ff831755d1bebd22ab46edc5e715f37",
         x86_64_linux: "81e8bb16289203ba8e0ca7f80c4b82e59ba35f5ee50aafef93a2a4116f2cb27f"

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
