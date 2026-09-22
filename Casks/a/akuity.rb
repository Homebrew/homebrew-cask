cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.5.0.20260921212202-fa31c4f7c4e8"
  sha256 arm:          "31dd3e0add3f87d7fe4336147fbf86a06b4438d2548bcdc4b09e6e23c72b7c3b",
         intel:        "54fc34351a0fd7437e6251ac6100c80599edd86bbae481d55ddddb4a77f9d410",
         arm64_linux:  "a0626f35aea7ff6ad5011e62039613511b5c3f01e0c44e3f56ac024923ce1d69",
         x86_64_linux: "9848e883f7ae9f3c3265e1034eae804058a3239ea65421780c2af8d882b6fe4b"

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
