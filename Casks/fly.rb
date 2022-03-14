cask "fly" do
  version "7.7.0"
  sha256 "19d71f6c57fbaac9abcddfbf17d99047bf6b9bee7db2da60ef1fc6e4ecf754db"

  url "https://github.com/concourse/concourse/releases/download/v#{version}/fly-#{version}-darwin-amd64.tgz"
  name "fly"
  desc "Official CLI tool for Concourse CI"
  homepage "https://github.com/concourse/concourse"

  binary "fly"
end
