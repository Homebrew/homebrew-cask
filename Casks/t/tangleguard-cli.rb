cask "tangleguard-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.25.0"
  sha256 arm:          "b2f4913f448693259a983a58148fed9374645be645175da843be3c9157a3fa49",
         intel:        "d25815c70eb83740cefe0141ea07b1b69716e817677db63249314e9acff3ae4a",
         arm64_linux:  "86798eb2ee27942549202d5947d50b525c70d3c318188b8dfbc1f4948b24bdd7",
         x86_64_linux: "a137ef9e1cefb94261259ea7983bdd18e0944e30bb9a6cbdca49dd0b4cd2f375"

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
