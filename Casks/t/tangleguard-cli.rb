cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.26.1"
  sha256 arm:          "b98511374a04585e989d590dfe8463905c987856d8105206c857a42a58cf62d9",
         intel:        "e8f4f5b063934810ae73c4fa543f5df0be326a17cfca188cf6d08d239e0be389",
         arm64_linux:  "4fdfb0152e6f8969a6e57a354ea5fb9442bae65bc66bfcd5a5effcc619962c60",
         x86_64_linux: "d1f4f29768652dd4c94d028e1b5f8541db68cec80d1481b93877c9dc875edcd4"

  on_macos do
    zap trash: "~/Library/Application Support/CrashReporter/tangleguard*"
  end
  on_linux do
    zap :not_required
  end

  url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/v#{version}/tangleguard-cli_#{version}_#{arch}-#{os}.tar.gz"
  name "Tangleguard CLI"
  desc "Code architecture context for LLMs and humans"
  homepage "https://tangleguard.com/"

  livecheck do
    url "https://tangleguard-cli-builds.s3.eu-central-1.amazonaws.com/latest/VERSION"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "tangleguard"
end
