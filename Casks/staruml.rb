cask "staruml" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.0.1"

  if Hardware::CPU.intel?
    sha256 "31d72acb8d12e255fb67afc536f952bae7b4400702df67b515adf564100ec87d"
  else
    sha256 "259d32508bd843e4defb6ec1b46e016d8408432b4095c60ec045f1cf2e721a88"
  end

  url "https://staruml.io/download/releases-v#{version.major}/StarUML-#{version}#{arch}.dmg"
  name "StarUML"
  desc "Software modeler"
  homepage "https://staruml.io/"

  livecheck do
    url "https://staruml.io/"
    regex(%r{href=.*?/StarUML-(\d+(?:\.\d+)*)(-arm64)?\.dmg}i)
  end

  app "StarUML.app"
end
