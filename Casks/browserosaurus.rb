cask "browserosaurus" do
  version "14.1.4"

  if Hardware::CPU.intel?
    sha256 "7c79cd778052b1cdbf58c849e20a5cffaea2941566e7d88e7aa2790a17f65029"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  else
    sha256 "2435070f47a4d9ab22b53a981e598ffea3a859d2f95f95457fcca02cd63a8429"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
