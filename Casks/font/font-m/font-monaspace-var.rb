cask "font-monaspace-var" do
  version "1.300"
  sha256 "ad5ae96b716ac4273a574729c49cdcb7814915785c749e3fdc88ba4c063be449"

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
