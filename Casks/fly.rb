cask "fly" do
  version "7.8.3"
  sha256 "fe8c2eb0a1b4d9df1701916270b870cf203f07512055274470594569f625cde0"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
