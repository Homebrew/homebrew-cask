cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.23.1"
  sha256 arm:          "c26f28d918b4c954e3bf69a7cc0089490d9b4683e48a3dd2591d02393d378bf0",
         intel:        "934d805d2fb5e0a9aed949c3a00edc3564500b1af6529027cb40a1bc2bac75b6",
         arm64_linux:  "27fc2f5d32478225100184e829befb41699eba3782a2feb53fe90040f4834839",
         x86_64_linux: "1256dd9d1621b50ab8b7cfe93f7c7155e6c9710966f41068e428a9c5c4b5c1bb"

  url "https://github.com/DataDog/datadog-agent-dev/releases/download/v#{version}/dda-#{arch}-#{os}.tar.gz"
  name "dda"
  desc "Tool for developing on the Datadog Agent platform"
  homepage "https://github.com/DataDog/datadog-agent"

  binary "dda"

  uninstall_preflight do
    system_command "dda",
                   args: ["self", "remove"],
                   sudo: false
  end

  caveats <<~EOS
    The `dda self update` command updates to an internal location
    rather than Homebrew's. Updates to the actual Cask may occur via
    `brew upgrade --cask #{token}`.
  EOS
end
