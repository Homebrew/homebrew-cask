cask "ggshield" do
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "1.56.1"
  sha256 arm:          "a6184367201fb6209a0f894f0cbb52da1f9a4df4b35ab6d720479a6aba63b2b5",
         intel:        "b50a99f5c6398d7e0077b6c16120a2679a7686d907635ce1508aea2298bf314b",
         arm64_linux:  "a866eea1f0e342458b478eaaf8234372780d32095845729831eed622cf885253",
         x86_64_linux: "02741cf4653bb355248bdf31be8385ee9b34436de6ab58bb9bed74e7e827e194"

  on_macos do
    arch arm: "arm64", intel: "x86_64"

    zap trash: "~/Library/Caches/ggshield"
  end
  on_linux do
    arch arm: "aarch64", intel: "x86_64"

    zap trash: "~/.cache/ggshield"
  end

  url "https://github.com/GitGuardian/ggshield/releases/download/v#{version}/ggshield-#{version}-#{arch}-#{os}.tar.gz"
  name "ggshield"
  desc "Scanner for secrets and sensitive data in code"
  homepage "https://github.com/GitGuardian/ggshield"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "ggshield-#{version}-#{arch}-#{os}/ggshield"
  generate_completions_from_executable "ggshield-#{version}-#{arch}-#{os}/ggshield",
                                       shell_parameter_format: :click
end
