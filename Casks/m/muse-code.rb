cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "0.1.0-R708.1"
  sha256 arm:          "4290bfafa5bbb81a6fd493aaea12f848c789b1d22edfa0c4b849151deba3e70c",
         x86_64:       "f76010944413938215134d45198b3fe891c24b8aa4f83001ede0d9273cc85fa1",
         arm64_linux:  "fa673ab874c25456644574ac52cbb43f23149c0584a46d5a2996ec43081ca262",
         x86_64_linux: "50937b6470cd0edf28eb683c352a5e7af3bcb1b015cd9a3b21dbf79d22af8182"

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
