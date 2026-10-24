cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.13-R6996.1"
  sha256 arm:          "9fd40ae9c6dfb847e3ef58b61405c004d0ebbf19ceb0297be966f750b3b84aa0",
         intel:        "58a9e006aab02934f3d20f48354999bbadc661ff7fbe3aa83fd0dc48bed520fd",
         arm64_linux:  "c7f278b5f12862f5721c73433976256aa2a8abd433a12da0e484d30b08c024ff",
         x86_64_linux: "51e97f8de0aa175080e6576cbc055510a95dfe0ededf175c7f6b34fc8e3bf524"

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
