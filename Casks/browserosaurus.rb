cask "browserosaurus" do
  version "14.4.0"

  if Hardware::CPU.intel?
    sha256 "53bc02dce8d5636e9f971af0e77a50876e12ad86d725e12519a2ef1656341a6a"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  else
    sha256 "fac273ab8302debc1526c1241e401ceec309e6a91228a42191869b1e3eee454e"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
