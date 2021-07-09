cask "kubenav" do
  version "3.6.0"

  if Hardware::CPU.intel?
    sha256 "e2a23c6e10e404edf23c9a009484d1410adab05e262dee6662d546853cc1ad4d"
    url "https://github.com/kubenav/kubenav/releases/download/#{version}/kubenav-darwin-amd64.zip",
        verified: "github.com/kubenav/kubenav/"
  else
    sha256 "6bb490f3eab3a178b8da01740409037a3db3fb44c4e158aada614958e321fd8d"
    url "https://github.com/kubenav/kubenav/releases/download/#{version}/kubenav-darwin-arm64.zip",
        verified: "github.com/kubenav/kubenav/"
  end

  name "kubenav"
  desc "Navigator for your Kubernetes clusters right in your pocket"
  homepage "https://kubenav.io/"

  app "kubenav.app"
  binary "#{appdir}/kubenav.app/Contents/MacOS/kubenav"
end
