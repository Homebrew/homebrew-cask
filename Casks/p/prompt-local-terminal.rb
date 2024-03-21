cask "prompt-local-terminal" do
  version "3.0.3"
  sha256 "ce0acc6758f3d685a0918fb01fd5f5aea87ab90c42415f1b4cf57d79f4b98077"

  url "https://download-cdn.panic.com/prompt/Install%20Prompt%20Local%20Terminal%20#{version}.zip"
  name "Prompt Local Terminal"
  desc "Helper to enable local terminal access in Prompt"
  homepage "https://help.panic.com/prompt/prompt-local-terminal/"

  livecheck do
    url "https://download-cdn.panic.com/prompt/"
    regex(/href=.*?Install%20Prompt%20Local%20Terminal%20v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :ventura"

  pkg "Install Prompt Local Terminal.pkg"

  uninstall launchctl: "com.panic.LocalTerminal",
            pkgutil:   "com.panic.LocalTerminal",
            delete:    "/usr/local/bin/PromptLocalTerminal"
end
