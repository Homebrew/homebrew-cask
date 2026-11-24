cask "coderabbit" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.9.7"
  sha256 arm:          "3195debaf9c685bc835c793a1d306c25848699c68100cc8692a132faa2520bd1",
         intel:        "f32bbf673de1292b30107ae892da32fa65c1a1f1bb790047da99fd7a3a7f0668",
         arm64_linux:  "33382874cbdb201109ea140f4b41f14143491c3a116458d471e92640a87e6a67",
         x86_64_linux: "1382d81b6b98bfbde6e7afbd529c3ab1f3154cbb6cbdf5d8beb388318ab59c5c"

  url "https://cli.coderabbit.ai/releases/#{version}/coderabbit-#{os}-#{arch}.zip"
  name "CodeRabbit"
  desc "AI code review CLI"
  homepage "https://www.coderabbit.ai/cli"

  livecheck do
    url "https://cli.coderabbit.ai/releases/latest/VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "coderabbit"

  zap trash: "~/.coderabbit"
end
