cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.537.0"
  sha256 arm:          "4450bc0d9a8e13b2a1f8fdda939f630481efd4fee91cccf944715bd1c167255e",
         intel:        "94be2562434c19f5d3e436043ae207ae8ef50e3f140fe026f3f065bb50aba576",
         arm64_linux:  "13a85bea3209fd34277b536ebd80a214137bdfc2eebd60e1a7f59daaf7f9836a",
         x86_64_linux: "c64eb62ec79b887978037fdd1dcf892f96050d7157f5a10349f4c7536ee1ad6d"

  on_macos do
    depends_on macos: :big_sur
  end

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
