cask "kubenav" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "3.7.2"

  url "https://github.com/kubenav/kubenav/releases/download/#{version}/kubenav-darwin-#{arch}.zip",
      verified: "github.com/kubenav/kubenav/"
  if Hardware::CPU.intel?
    sha256 "6977025db6c093f5e7f7cd72bd027cec9b23ddfbe76a44343a84a4e1d7a43fa1"
  else
    sha256 "267047ccca59c3ff7f9721fa86bed80016fe7f8ee4392ec6b2afdda3178a083c"
  end

  name "kubenav"
  desc "Navigator for your Kubernetes clusters right in your pocket"
  homepage "https://kubenav.io/"

  app "kubenav.app"
  binary "#{appdir}/kubenav.app/Contents/MacOS/kubenav"
end
