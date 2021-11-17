cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "15.3.9"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-#{arch}-#{version}.zip"
  if Hardware::CPU.intel?
    sha256 "e81751d7d44f8dea3079444f6ac34a4ce6e3c18f3886f0b76d1716f8e6490976"
  else
    sha256 "0fb4e3982c394ad38c2eb1ab1d865e0e57e76eec7ccc2a8bcaa635f7889a5535"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://github.com/will-stone/browserosaurus"

  auto_updates true

  app "Browserosaurus.app"

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end
