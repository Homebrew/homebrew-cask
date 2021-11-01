cask "sidestep" do
  version "1.4.1"
  sha256 "c25f7748d73b6f915aff268070ef85ca69f2902de98b044b77c49d1e1341d84e"

  url "https://github.com/chetan51/sidestep/releases/download/#{version}/Sidestep.zip",
      verified: "github.com/chetan51/sidestep/"
  name "Sidestep"
  homepage "https://chetansurpur.com/projects/sidestep/"

  app "Sidestep.app"
end
