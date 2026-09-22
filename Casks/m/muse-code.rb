cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.3.0-R3401.1"
  sha256 arm:          "20c5eb32f6aea741adac032c14be2f1897432caaf35144c33279a4d2b0bd8840",
         intel:        "ebfe4e5b3dee95acc649e1cafec44d9dbf386042273ab9e47136b8da016d6d9a",
         arm64_linux:  "5e5ea2a3de3a3fabdff8982aec9423d20eaa7dad05df37efb4264356d0d2e223",
         x86_64_linux: "71b089d055dfe6e4562092bc484896b61bd96fd6ef9fef9da54a14aa174e2a33"

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
