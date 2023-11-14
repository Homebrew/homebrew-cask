cask "hubhelper" do
  version "0.1.1"
  sha256 "e7ea33da818eb29f43b924361de6f3a6860e81d0cac22e615b0e31e6036da73c"

  url "https://github.com/nihilok/hubhelper/releases/download/v#{version}/hubhelper.zip"
  name "hubhelper"
  desc "Desktop notifications and search tool for GitHub"
  homepage "https://github.com/nihilok/hubhelper/"

  app "hubhelper.app"

  zap trash: "~/.hubhelp.token"
end
