cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.10.2-hf2"
  sha256 arm:          "f3a423e4958f7d5026d1c1b51ab7662471c09eac0e244ef0f2e5fd5843ea0124",
         intel:        "d6bbc96c1e46b0b00db0a7c31048cd9de29bb8645c7f6fce29be1efdf220048d",
         x86_64_linux: "9ff5592776cc9f4358e9fd9aff5ac10ed729b38b92bd0a07b8b3358737754255"

  on_linux do
    depends_on arch: :x86_64
  end

  url "https://downloads.mend.io/cli/#{os}_#{arch}/mend"
  name "mend"
  desc "Application security scanning CLI"
  homepage "https://www.mend.io/"

  livecheck do
    url "https://downloads.mend.io/matrix.json"
    strategy :json do |json|
      json["latest"]
    end
  end

  binary "mend"

  zap trash: "~/.mend"
end
