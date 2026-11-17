cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.23-R8977.1"
  sha256 arm:          "215a6eaac150f5855edc5a1df3b14ddfa504eb03690a4d65449887b396522fa8",
         intel:        "d8a29bc2b5c44ac00372d4151bad9aec7f7e3f0985455530b6abd7807b4a6e40",
         arm64_linux:  "e06646f5e59bac21c1ae44c14bd361ed5375df6ac1f0637f03004a713fb85a33",
         x86_64_linux: "7ca9e16659f759eab3ae6c4b61c6f1e70f5f3fea1ca961ebd49044a1146956f4"

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
