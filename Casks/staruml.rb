cask "staruml" do
  arch arm: "-arm64"

  version "5.0.2"
  sha256 arm:   "abf41ab3d32d1b33ba6a3938e21ee8fba73766ceda0ee26a5ccafd3a11984596",
         intel: "0df2006e175e8cfccf17bc3ca27d505177fab2cf7dda97b2299f1841b3bd98fe"

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
