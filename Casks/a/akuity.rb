cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.30.0-rl.2.0.20260526055929-cf4c6db2ce0e"
  sha256 arm:          "d72737d3a122131926761f9797b8fa9a0c7127428b02d7d21cf3bbf951d8b133",
         intel:        "75fb63a0594e199c56aefd7defa430fafc930080a5c3ea010779e725d5cc3c26",
         arm64_linux:  "69e2fb2b39992e83ffbbffffac6215f07e7381c65d9e897edfbb2bdbb3d2cb3e",
         x86_64_linux: "ebc9ee43fdcddcaaf191ce8c545d6b3e5d862972d61871359a81cf55323c7af4"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
