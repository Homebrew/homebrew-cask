cask "browserosaurus" do
  version "15.1.3"

  if Hardware::CPU.intel?
    sha256 "44ce42df6e1d1316f30fd4a97dae144768765979748420d3aef2195f4bd2ced2"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip"
  else
    sha256 "be38dd422ef5a29f42550c4ba6999fbc7324c7b8f1ce41f87ceb9399e8e3bfa4"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://github.com/will-stone/browserosaurus"

  auto_updates true

  app "Browserosaurus.app"
end
