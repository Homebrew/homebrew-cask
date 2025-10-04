cask "lazarus" do
  arch arm: "aarch64", intel: "x86_64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86-64"

  version "4.2"
  sha256 arm:   "5bde40a73b869766d7177522555a7158e805a7c36ce4e154f86e094aaa437135",
         intel: "aaa966c0d61f07291a92cd3a621a4f5d9862cc7f695246d5062fe1603ea2bf2e"

  url "https://downloads.sourceforge.net/lazarus/Lazarus%20macOS%20#{folder}/Lazarus%20#{version}/lazarus-darwin-#{arch}-#{version}.zip",
      verified: "downloads.sourceforge.net/lazarus/"
  name "Lazarus"
  desc "IDE for rapid application development"
  homepage "https://www.lazarus-ide.org/"

  depends_on formula: "fpc"

  app "lazarus/lazarus.app", target: "Lazarus.app"

  # Unmark quarantine attributes
  preflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path]
  end

  zap trash: [
    "~/.lazarus",
    "~/Library/Preferences/lazarus.plist",
  ]

  caveats <<~EOS
    You need Xcode Command Line Tools:
      xcode-select --install
  EOS
end
