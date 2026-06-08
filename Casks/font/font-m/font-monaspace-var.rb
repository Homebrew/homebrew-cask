cask "font-monaspace-var" do
  version "1.400"
  sha256 "b69a7f2a3c455c89dcb6cc23b61bb3fb8beecba728ccdebeccd80577e58de0c8"

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
