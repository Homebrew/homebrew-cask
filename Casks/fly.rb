cask "fly" do
  version "7.5.0"
  sha256 "8422754d7c3654dc30e17b19bb69f5911eaa347924b64aec46be8ea5acd751a9"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
