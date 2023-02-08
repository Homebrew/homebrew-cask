cask "fly" do
  version "7.9.0"
  sha256 "c159ef10e5cf8cca73d8c47000dcac96eeb28dda226ef78a7ee37a29d442b242"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
