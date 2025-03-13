cask "coterm" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:          "0eb8ae355b2a1fbae2912d7ce971d5e01177dffdcb356a399bee24db72ab5871",
         x86_64:       "64541b749e00a21558c935bba2cf31c2eb75368b4b19798e68eb37c961b09342",
         arm64_linux:  "8d69877d44b70f2103ea75548e628575d4842fa997b8aa9b181ba40abfedc0e6",
         x86_64_linux: "af5221396f5e18514031d2aa11e3c159c2a3ee5269b3c44a4fe53617759ba3dd"

  os macos: "macos", linux: "linux"
  url "https://coterm.datadoghq.com/coterm/#{version}/29eab36/#{os}-#{arch}/ddcoterm"
  name "coterm"
  desc "CLI tool by Datadog for terminal recording and approvals"
  homepage "https://docs.datadoghq.com/coterm/"

  livecheck do
    skip "No version information available programmatically"
  end

  binary "ddcoterm"

  zap trash: "~/.ddcoterm"

  caveats <<~EOS
    If this is your first time installing CoTerm: run 'ddcoterm init' to log in and set up your configuration.
  EOS
end
