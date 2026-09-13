cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.2.1-R2847.1"
  sha256 arm:          "020ebed5248767450413a7972a5cbc12c228ad82d4bdcf221e5d6350df39604c",
         intel:        "006b2c3b9c2dd40aa7b0d25fb2d53c8d208abed535f24a6378b7a49ff10ebb6b",
         arm64_linux:  "0b5ae115424b6eda596f9bfdc8eedc6391bc1504e0d95f2275f90c713f3dea1c",
         x86_64_linux: "3961a7cc405c83609a6a6dc36bf719671288b412740535c4b8ea7442ba801b49"

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
