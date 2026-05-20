cask "aspire" do
  arch arm: "arm64", intel: "x64"

  version "13.4.0-preview.1.26269.6"
  sha256 arm:   "02e28e82d02ade71b1611a8ee6aba9fb02b99303ed971cbb6ff326dfaed51a92",
         intel: "8bdf58df5636856f0587cc15e893ded7a1817b787bcae394674f93d1dc39d328"

  url "https://ci.dot.net/public/aspire/13.4.0-preview.1.26269.6/aspire-cli-osx-#{arch}-#{version}.tar.gz",
      verified: "ci.dot.net/public/aspire/"
  name "Aspire CLI"
  desc "CLI for building observable, production-ready distributed applications"
  homepage "https://aspire.dev/"

  livecheck do
    skip "ci.dot.net artifact storage has no version index; Aspire release automation manages cask updates"
  end

  depends_on macos: :monterey

  binary "aspire"

  # Write the sidecar file
  postflight do
    File.write("#{staged_path}/.aspire-install.json", %Q({"source":"brew"}\n))
  end

  zap trash: [
        "~/.aspire/cache",
        "~/.aspire/cli/backchannels",
        "~/.aspire/cli/runtime",
        "~/.aspire/cli/telemetrystorage",
        "~/.aspire/logs",
      ],
      rmdir: [
        "~/.aspire",
        "~/.aspire/cli",
      ]
end
