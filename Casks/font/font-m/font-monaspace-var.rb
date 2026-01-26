cask "font-monaspace-var" do
  version "1.301"
  sha256 "255d7101e6fefc9d4bb7df844c79b7f4e11c61e62387a13c4bd0a5970c3f6674"

  url "https://github.com/githubnext/monaspace/releases/download/v#{version}/monaspace-variable-v#{version}.zip",
      verified: "github.com/githubnext/monaspace/"
  name "Monaspace Var"
  homepage "https://monaspace.githubnext.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Variable Fonts/Monaspace Argon/Monaspace Argon Var.ttf"
  font "Variable Fonts/Monaspace Krypton/Monaspace Krypton Var.ttf"
  font "Variable Fonts/Monaspace Neon/Monaspace Neon Var.ttf"
  font "Variable Fonts/Monaspace Radon/Monaspace Radon Var.ttf"
  font "Variable Fonts/Monaspace Xenon/Monaspace Xenon Var.ttf"

  # No zap stanza required
end
