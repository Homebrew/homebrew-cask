cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.24-R9131.1"
  sha256 arm:          "51224e835fccf2ba8c1abe9c2957b187252050a0b7315e0b1ee4cdcd2f090494",
         intel:        "dc65624b7e061e7f11f251acf4b11d77c4a1bb9eca945d58cd6787f84da8521a",
         arm64_linux:  "31d4c1fdf382e6711b1c8854d976a6095fe4743eb17b2a8f9a5bb43aef5bad63",
         x86_64_linux: "d752c45dce079ee29e118804b091d81ac2b1b89b67f317b4a162fa1af1206465"

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
