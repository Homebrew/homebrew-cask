cask "alloy" do
  arch arm: "aarch64", intel: "amd64"

  version "6.2.0"
  sha256 arm:   "d7ce578954e24f8faa81bd8ad4fb56dd146555a39740fed3ef8c9d34a7333f63",
         intel: "b3213dab95f608e07485e412d223dfe44f19042ec9ea0794b058b9ef90597e71"

  url "https://github.com/AlloyTools/org.alloytools.alloy/releases/download/v#{version}/alloy-#{version}-mac-#{arch}.zip",
      verified: "github.com/AlloyTools/org.alloytools.alloy/"
  name "Alloy"
  desc "Programming language for software modelling"
  homepage "https://alloytools.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Alloy.app"

  zap trash: "~/Library/Saved Application State/org.alloytools.alloy.savedState"
end
